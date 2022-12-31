echo '
function Alert(){
    return (
         <div className="flash flash-success alert alert-dismissible fade show" role="alert">
          <span><strong>Yay!</strong> 🎉 you successfully signed in to our service.</span>
          <a data-bs-dismiss="alert" aria-label="Close">
            <i class="fas fa-times"></i>
          </a>
        </div>
        
        <div className="flash flash-warning alert alert-dismissible fade show" role="alert">
          <span><strong>Mmh</strong> 🤔 seems like you don have <a href="#">profile picture</a> yet.</span>
          <a data-bs-dismiss="alert" aria-label="Close">
            <i class="fas fa-times"></i>
          </a>
        </div>
        
        <div className="flash flash-danger alert alert-dismissible fade show" role="alert">
          <span><strong>Oops!</strong> 😱 a problem has occurred while processing your booking.</span>
          <a data-bs-dismiss="alert" aria-label="Close">
            <i class="fas fa-times"></i>
          </a>
        </div>
    )
}

export default Alert;
        ' > ./src/components/Alert.js

# echo "
# .flash {
#   padding: 16px 24px;
#   display: flex;
#   justify-content: space-between;
#   align-items: center;
#   background: white;
#   box-shadow: 0 0 8px rgba(0,0,0,0.2);
#   border-radius: 4px;
#   margin: 8px;
# }
# 
# .flash-success {
#   border: 2px solid #1EDD88;
# }
# 
# .flash-warning {
#   border: 2px solid #FFC65A;
# }
# 
# .flash-danger {
#   border: 2px solid #FD1015;
# }
#" >> style.css
