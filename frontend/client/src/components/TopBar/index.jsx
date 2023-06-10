import React from "react";
import userimage from "../../assets/images/resource/user.png";
// import {useDispatch ,useSelector} from "react-redux";
// import {useAler} from "react-alert";

function TopBar() {
  // const alert= useAlert();
  // const dispatch = useDispatch();
  // const {user,loading} =useSelector(state=>state.auth) 
  return (
    <div>
      <header className="dashboard_header">
        <div className="header__container pt20 pb20 pl30 pr30">
          <div className="row justify-between items-center">
            <div className="col-sm-4 col-xl-2">
              <div className="text-center text-lg-start d-flex mb15-520">
                <div className="fz20 me-4">
                  <a
                    href="#"
                    className="dashboard_sidebar_toggle_icon text-thm1 vam"
                  >
                    
                  </a>
                </div>
                <div className="dashboard_header_logo">
                  <p className="logo">
                    VISIT APP<span className="text-thm">.</span>
                  </p>
                </div>
              </div>
            </div>
            <div className="col-sm-3 col-xl-3 d-none d-md-block">
              <div className="header_search_widget mb15-520">
                <div className="input-group">
                  <input
                    type="text"
                    className="form-control"
                    placeholder="Search"
                    aria-label="Recipient's username"
                  />
                  <div className="input-group-append">
                    <button className="btn" type="button">
                      <span className="fa fa-search"></span>
                    </button>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-sm-5 col-xl-6 offset-xl-1 d-none d-md-block">
              <div className="text-center text-lg-end header_right_widgets">
                <ul className="mb0 d-flex justify-content-center justify-content-sm-end">
                  <li className="">
                    <a className="text-center" href="/">
                      <span className="flaticon-exit"></span>
                    </a>
                  </li>
                  <li className="" style={{paddingRight:20,paddingTop:10,fontSize:12,width:150,color:"black",textTransform:"uppercase"}}>
                      <div></div>
                      <span style={{color:"grey",fontSize:11}}></span>
                  </li>
                  
                  <li className=" user_setting">
                    <div className="dropdown">
                      <a
                        className="btn dropdown-toggle"
                        href="#"
                        data-bs-toggle="dropdown"
                      >
                        <img src={userimage} alt="user.png" />
                      </a>
                      
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </header>
    </div>
  );
}

export default TopBar;
