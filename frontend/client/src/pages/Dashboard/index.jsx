import React, { useEffect, useState } from "react";
import SideBar from "../../components/SideBar";
import TopBar from "../../components/TopBar";
// import TableDash from "../../components/TableDash";
import Charts from "../../components/Charts";
// import DatatablePage from "../../components/TableDash";
import useAxiosFetch from "../../hooks/useAxiosFetch";
import { useNavigate } from "react-router-dom";
import { useParams } from "react-router-dom";
import axios from "axios";
import { toast } from "react-toastify";
import HorizontalChart from "../../chart-horizontal";


function Dashboard() {
  // const [graphShow, setGraphShow] = useState();
  const [visitTotal, setVisitTotal] = useState([]);
  const [data, setData] = useState([]);
  const [visitorTotal, setVisitorTotal] = useState([]);
  const [userTotal, setUserTotal] = useState([]);
  const [visitdata, setVisitData] = useState([]);
  // const [data, setData] = useState([]);
  // const navigate = useNavigate();
  const {id} = useParams();

  const { datas } = useAxiosFetch(`http://localhost:8000/api/visits/recent`);
  // const { visitDatas } = useAxiosFetch(`http://localhost:8000/api/get_visits_datas`);

  // useEffect((id) => {
      

  //   }, [id]);


  const graphData = [
    { name: "Page A", violence: 400 },
    { name: "Page B", violence: 300 },
    { name: "Page C", violence: 200 },
    { name: "Page D", violence: 500 },
  ];

  // const datasw =visitDatas.map((dataV)=>{}
    
  // );
    const LoadVisitsData = async () => {
      const response = await axios.get("http://localhost:8000/api/visits");
      if (response.status === 200) {
        setVisitTotal(response.data.length);
      } else {
        toast.error("something when wrong");
      }
    };

    const LoadVisitorData = async () => {
      const response = await axios.get("http://localhost:8000/api/visitors");
      if (response.status === 200) {
        setVisitorTotal(response.data.length);
      } else {
        toast.error("something when wrong");
      }
    };

    const LoadUserData = async () => {
      const response = await axios.get("http://localhost:8000/api/users");
      if (response.status === 200) {
        setUserTotal(response.data.length);
      } else {
        toast.error("something when wrong");
      }
    };

  useEffect(() => {
    setData(datas);
    // setVisitData(visitDatas);
    LoadVisitsData();
    LoadVisitorData();
    LoadUserData();
  }, [datas]);

  const handleDelete = async (id) => {
    if (window.confirm("Do you really want to delete this Visit?")) {
      const response = await axios.delete(`http://localhost:8000/api/visits/${id}`);
      if (response.status === 200) {
        toast.success(" deleted succesfully");
        window.location.reload(true);
        setData(datas);
      } else {
        toast.error("something when wrong");
      }
    }
  };
  // useEffect((data) => {
  //   if ((data = 1)) {
  //     setGraphShow(data);
  //   }
  // }, []);

  return (
    <div>
      <TopBar />
      <div>
        <SideBar />
        <div>
          <div className="dashboard__main pl0-md">
            <div className="dashboard__content bgc-gmart-gray">
              <div className="row pb50">
                <div className="col-lg-12">
                  <div className="dashboard_title_area">
                    <h2>Dashboard</h2>
                    <p className="para">A General management pannel</p>
                  </div>
                </div>
              </div>
              <div className="row">
                <div className="col-lg-4">
                  <div className="d-flex justify-content-between statistics_funfact">
                    <div className="details">
                      <div className="subtitle1">Total Visit</div>
                      <div className="title">
                        {visitTotal}

                      </div>
                    </div>
                    <div className="icon text-center mt-4">
                      <i className="flaticon-money-bag"></i>
                    </div>
                  </div>
                </div>
                <div className="col-lg-4">
                  <div className="d-flex justify-content-between statistics_funfact">
                    <div className="details">
                      <div className="subtitle1">Number of visitors</div>
                      <div className="title"></div>
                      <div className="title">
                        {visitorTotal}
                      </div>
                    </div>
                    <div className="icon text-center mt-4">
                      <i className="flaticon-sent"></i>
                    </div>
                  </div>
                </div>
                <div className="col-lg-4">
                  <div className="d-flex justify-content-between statistics_funfact">
                    <div className="details">
                      <div className="subtitle1">Number of Users</div>
                      <div className="title"></div>
                      <div className="title">
                        {userTotal}
                      </div>
                    </div>
                    <div className="icon text-center mt-4">
                      <i className="flaticon"></i>
                    </div>
                  </div>
                </div>
              </div>
              <div className="row">
                <div className="col-xl-12">
                  <div className="application_statics mb30">
                    <div className="report_widget d-block d-sm-flex justify-content-center justify-content-sm-between">
                      <h4 className="title pl30">Earning Statistics</h4>
                      <ul className="mb0 ml30-520">
                        <li className="list-inline-item report_export mb15-520">
                          <a href="#">Export Report</a>
                        </li>
                        <li className=" list-inline-item report_export">
                          <select className="selectpicker form-control show-tick">
                            <option value="week">This Week</option>
                            <option value="month">This Month</option>
                            <option value="year">This Year</option>
                          </select>
                        </li>
                      </ul>
                    </div>
                    {/* <canvas id="myChartweave" style={{ height: 230 }}></canvas> */}
                    <Charts/>

                    {/* <HorizontalChart/> */}

                  </div>
                </div>
              </div>
              <div className="row">
                <div className="col-xl-12">
                  <div className="application_statics">
                    <h4 className="title pl30 mb30">Recent Visits</h4>
                    <div className="account_user_deails dashboard_page">
                      <div className="order_table table-responsive">
                        <table className="table">
                          <thead className="table-light">
                            <tr>
                              <th scope="col">ID</th>
                              <th scope="col">Purpose</th>
                              <th scope="col">Date</th>
                              <th scope="col">Departure Date</th>
                              <th scope="col">Visitor</th>
                              <th scope="col">Action</th>
                            </tr>
                          </thead>
                          <tbody>
                            {data.map((dataT, index) => (
                              <tr>
                                <th scope="row" key={index}>
                                  {dataT.id}
                                </th>
                                <td>{dataT.purpose}</td>
                                <td>{dataT.date}</td>
                                <td>{dataT.departureDate}</td>
                                <td>{dataT.visitor_id}</td>
                                <td className="editing_list align-middle">
                                  <ul>
                                    <li className="list-inline-item mb-1">
                                      <a
                                        href="/addvisitor"
                                        data-bs-toggle="tooltip"
                                        data-bs-placement="top"
                                        title="Edit"
                                        data-bs-original-title="View"
                                        aria-label="View"
                                      >
                                        <span className="flaticon-pencil"></span>
                                      </a>
                                    </li>
                                    <li
                                      onClick={()=>handleDelete(dataT.id)}
                                      className="list-inline-item mb-1"
                                    >
                                      <a
                                        href="#"
                                        data-bs-toggle="tooltip"
                                        data-bs-placement="top"
                                        title="Delete"
                                        data-bs-original-title="Edit"
                                        aria-label="Edit"
                                      >
                                        <span className="flaticon-delete"></span>
                                      </a>
                                    </li>
                                  </ul>
                                </td>
                              </tr>
                            ))}
                           
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            </div>
            
            <div>
              
            </div>
          </div>
        </div>
        {/* <DatatablePage /> */}
      </div>

      {/* sdashboard */}
    </div>
  );
}

export default Dashboard;
