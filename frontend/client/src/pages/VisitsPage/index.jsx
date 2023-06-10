import React, { useState, useEffect } from "react";
import SideBar from "../../components/SideBar";
import TopBar from "../../components/TopBar";

import useAxiosFetch from "../../hooks/useAxiosFetch";
import { Link, useNavigate } from "react-router-dom";
import axios from "axios";
import { toast } from "react-toastify";
// import "./styles.css";
import _ from "lodash";
import Pagination from "../../components/Pagination";
const pageSize = 10;
function VisitorsPage() {
  const navigate = useNavigate();
  const [data, setData] = useState([]);
  const { datas } = useAxiosFetch(`http://localhost:8000/api/visits`);
  const [paginatedData, setPaginatedData] = useState([]);
  const [current, setCurrent] = useState([]);

  const Paginations = (pageN) => {
    setCurrent(pageN);
    const startindex = (pageN - 1)*10;
    const PaginatedDatas = _(data).slice(startindex).take(pageSize).value();
    //_ a put
    setPaginatedData(PaginatedDatas);
  };


  useEffect(() => {
    setData(datas);
    setPaginatedData(_(datas).slice(0).take(pageSize).value());
    // _a put
  }, [datas]);

  const handleDelete = async (id) => {
    if (window.confirm("do you really want to delete this invitation?")) {
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
  return (
    <div>
      <TopBar />
      <div>
        <SideBar />
        <div>
          <div class="dashboard__main pl0-md">
            <div class="dashboard__content bgc-gmart-gray">
              <div class="row pb50">
                <div class="col-lg-12">
                  <div class="dashboard_title_area">
                    <h2>Visits</h2>
                    <p class="para">Here is the list visits</p>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-xl-12">
                  <div class="dashboard_product_list account_user_deails">
                    <div class="row d-block d-sm-flex justify-content-center justify-content-sm-between">
                      <div class="col-sm-6 col-lg-4">
                        <div class="dashboard_page header_search_widget mb30 mb15-520">
                          <div class="input-group">
                            <input
                              type="text"
                              class="form-control"
                              placeholder="Search Visitor"
                              aria-label="Recipient's username"
                            />
                            <div class="input-group-append">
                              <button class="btn" type="button">
                                <span class="fa fa-search"></span>
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>

                      <div class="col-lg-4">
                        <div class="dashboard_page_add_listing text-center text-lg-end mb30 mb15-520">
                          <a
                            href="/addvisits"
                            class="btn btn-order btn-lg btn-thm"
                          >
                            Add visit
                          </a>
                        </div>
                      </div>
                    </div>
                    <div>
              <div className="row">
                <div className="col-xl-12">
                  <div className="application_statics">
                    <h4 className="title pl30 mb30">List of Visits</h4>
                    <div className="account_user_deails dashboard_page">
                      <div className="order_table table-responsive">
                        <table className="table">
                          <thead className="table-light">
                            <tr>
                              <th scope="col">ID</th>
                              <th scope="col">Purpose</th>
                              <th scope="col">Departure Date</th>
                              <th scope="col">Visitor</th>
                              <th scope="col">Created By</th>
                              {/* <th scope="col">Creation Date</th> */}
                              <th scope="col">Action</th>
                            </tr>
                          </thead>
                          <tbody>
                            {paginatedData.map((dataT, index) => (
                              <tr>
                                <th scope="row" key={index}>
                                  {dataT.id}
                                </th>
                                <td>{dataT.purpose}</td>
                                <td>{dataT.departureDate}</td>
                                <td>{dataT.visitor_id}</td>
                                <td>{dataT.user_id}</td>
                                {/* <td>{dataT.created_at}</td> */}
                                <td className="editing_list align-middle">
                                  <ul>
                                    <li className="list-inline-item mb-1">
                                      <Link to={`/editvisit/${dataT.id}`}
                                        data-bs-toggle="tooltip"
                                        data-bs-placement="top"
                                        title="Edit"
                                        data-bs-original-title="View"
                                        aria-label="View"
                                      >
                                        <span className="flaticon-pencil"></span>
                                      </Link>
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
              <Pagination pageSize={pageSize} data={data} current={current} Paginations={Paginations}  />
              </div>
              </div>
              </div>
            </div>
          </div>
        </div>
        {/* </div>
        </div>  */}
      </div>
      {/* sdashboard */}
    </div>
  );
}

export default VisitorsPage;
