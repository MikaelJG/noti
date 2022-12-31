#!/bin/bash

read -p "Nom du projet : " NOM_DU_PROJET
DATE=$(date +%Y-%m-%d)
DIR=$(pwd)
COMPONENTS=( "alert" "avatar" "banner" "button" "btn" "card" "cardcategory" "cardcat" "cardproduct" "cardprod" "cardgrid" "cardtrip" "cards" "footer" "navbar" "nav" "bar" "notification" "notif" "searchform" "form" "tabs")
ARG_ARRAY=( "$@" )
MATCHING_ARRAY=()

ARE_COMPONENTS() {
    for i in "${ARG_ARRAY[@]}";
        do
            if [[ " ${COMPONENTS[*]} " =~ " $i " ]];
                then
                # is inside arg array, append matching array
                MATCHING_ARRAY+=($i)
            fi
    done

    if [[ ${#MATCHING_ARRAY[@]} -eq ${#ARG_ARRAY[@]} ]];
        then
        echo "all components, returning true"
        return 0
        # returns true
    else
        echo "not all components, returning false"
        return 1 
        # return false
    fi
}

INSTALL_NPX() {
    npx create-react-app $NOM_DU_PROJET
    # Apps.js is created

    cd "${DIR}/${NOM_DU_PROJET}"
    # change App.js
    sed -i '/<header/,/<\/header>/d' ./src/App.js
    # change la page landing par default
    sed -i '/className="App"/d' ./src/App.js
    sed -i '/import/,/.css.;/d' ./src/App.js

    rm -f ./src/index.css
    touch ./src/index.css
}

INSTALL_SASS() {
    echo "installing SASS"
    sleep 3
    # installing sass with yarn, not npm
    yarn add sass

    mv ./src/App.css ./src/App.scss

    # modify App.js for sass
    sed -i "s/css/scss/" ./src/App.js
    echo "to use a component, add @use './shared.scss'; to App.js"
}

INSTALL_MATERIAL_UI() {
    echo "------------------ INSTALLATION DE MATERIAL UI ------------------"
    sleep 3 
    npm install @mui/material @emotion/react @emotion/styled
}

CREATE_COMPONENT_FILES_SCSS() {
    echo "------------------ CREATION DU FICHIER VARIABLES.SCSS ------------------"
    sleep 3 

    mkdir ./src/components

    for i in "${ARG_ARRAY[@]}";
        do
            # i should be capitalized
            I=`echo "${i^}"`

            # create component file
            touch ./src/components/${I}.js

            # write component file
            echo "
            function ${I}() {
              return (
                  <div className='${I}'>
                      <p> This is my ${I}</p>
                  </div>
              )
            }
            
            export default ${I};
            " > ./src/components/${I}.js
    done

    # create _variables.scss in dir components
    touch ./src/components/_variables.scss

    # write _variables.scss
    echo "
    // COLORS //
    
    \$white: #ffffff;
    
    \$black: #151515;
    " > ./src/components/_variables.scss

    echo "------------------ IMPORTATION DU FICHIER VARIABLES.SCSS ------------------"
    sleep 3

    # import _variables.scss in App.scss
    echo "@import './components/variables';" > ./src/App.scss
}

MOD_APP_JS() {

    # todo
    # make sure app.js is in right place.

    echo "
        import './App.scss';
        
        function App() {
            return (
                <div className='App'>

    " > ./src/App.js

    for i in "${ARG_ARRAY[@]}";
        do

        # i must be first char upcase
        I=`echo "${i^}"`

        # import component at top of App.js
        echo "import ${I} from './components/${I}';" | cat - ./src/App.js > temp && mv temp ./src/App.js 

        # CSS of component at middle of App.js
        echo "
                <${I} />
        " >> ./src/App.js
    done

    # export at end the file (end)
    echo "
            </div>
        )
    }
    
    export default App;
    " >> ./src/App.js
}

DEFAULT_APP_JS() {
    # link les components dans App.js
    echo "
    import Navbar from './components/Navbar';
    import Content from './components/Content';
    import Footer from './components/Footer';
    import Button from '@mui/material/Button';
    import './App.scss';
    
    function App() {
        return (
            <div className='App'>
                <Navbar />
                <Content />
                <Footer />
                <Button variant=\"contained\"
                    onClick={() => {
                      alert('clicked');
                    }}
                  > Hello Julien!</Button>
            </div>
        )
    }
    
    export default App;
    " > ./src/App.js
}

# RUN_COMPONENTS_SCRIPTS() {
#     for i in "${ARG_ARRAY[@]}";
#         do
#             # run the script
#             ~/code/myman/reactman/components_script/${i}.sh
#     done
# }

COMPONENTS_ALL() {
    CREATE_COMPONENT_FILES_SCSS

    if [ $# -eq 0 ];
        then
        DEFAULT_APP_JS
    else
        MOD_APP_JS
    fi
}

INSTALL_ALL() {
    INSTALL_NPX
    INSTALL_SASS
    INSTALL_MATERIAL_UI
}

if ARE_COMPONENTS $1;
    then
    INSTALL_ALL
    COMPONENTS_ALL
else
    echo "something went wrong"
fi

# ouvrir VS CODE

code .

# to run the app on http://localhost:3000
# npm start
