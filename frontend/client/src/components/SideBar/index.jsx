import React from "react";
import { NavLink } from "react-router-dom";

function SideBar() {
  return (
    <div className="dashboard_content_wrapper">
      <div className="dashboard dashboard_wrapper pr30 pr0-md">
        <div className="dashboard__sidebar">
          <div className="dashboard_sidebar_list">
            <div className="sidebar_list_item">
              <a href="/admindashboard" className="items-center -is-active">
                <i className="flaticon-house mr15"></i>Dashboard
              </a>
            </div>
            <div className="sidebar_list_item ">
              <a href="/visits" className="items-center">
                <i className="flaticon-cash-on-delivery mr15"></i>Visits
              </a>
            </div>
            <div className="sidebar_list_item ">
              <a href="/visitors" className="items-center">
                <i className="flaticon-checked-box mr15"></i>Visitors
              </a>
            </div>
            {/* z */}
            <div className="sidebar_list_item ">
              <a href="/" className="items-center">
                <i className="flaticon-exit mr15"></i>Logout
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default SideBar;
