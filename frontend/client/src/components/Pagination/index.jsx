import React from "react";
import _ from "lodash";

// import { useState } from "react";

const Pagination = ({ current, data, Paginations, pageSize }) => {
  //   const [paginatedData, setPaginatedData] = useState();
  //   const [current, setCurrent] = useState();

  const pageCount = data ? Math.ceil(data.length / pageSize) : 0;
  if (pageCount === 1) return null;
  const pages = _.range(1, pageCount + 1);
  console.log("current");
  console.log(current);
  //_.
  return (
    <div>
      {" "}
      <div className="mbp_pagination mt30 text-center">
        <ul className="page_navigation">
          <li className="page-item">
            <a
              className="page-link"
              href="#"
              tabindex="-1"
              aria-disabled="true"
            >
              <span className="fas fa-angle-left"></span>
            </a>
          </li>
          {pages.map((page) => (
              <li
                className={page === current ? "page-item active" : "page-item "}
              >
                <p
                  className="page-link"
                  onClick={() => {
                    Paginations(page);
                  }}
                >
                  {page}
                </p>
              </li>
            ))}

          <li className="page-item">
            <a className="page-link" href="#">
              <span className="fas fa-angle-right"></span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  );
};

export default Pagination;
