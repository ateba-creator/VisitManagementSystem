import React, { useEffect, useState } from "react";
// import "./styles.css";
import axios from "axios";
import { Form, Formik, Field, ErrorMessage } from "formik";
import * as Yup from "yup";
import { useNavigate, useParams } from "react-router-dom";

import useAxiosFetch from "../../hooks/useAxiosFetch";


const EditVisitPage = () => {

  const {id} = useParams();
  const [data, setData] = useState([]);
  const { datas } = useAxiosFetch(`http://localhost:8000/api/visits/${id}`);

  // const [visitorData, setVisitorData] = useState([]);
  // const { visitorDatas } = useAxiosFetch(`http://localhost:8000/api/visitors`);


  useEffect(() => {
    setData(datas);
    // setVisitorData(visitorDatas);
  }, [datas]);

  const navigate = useNavigate();
  const initialValues = {
    purpose: "",
    date: "",
    departuredate: "",
    visitor: "",
  };

  const handleSubmit = (values, props) => {

    const axiosConfig = {
      headers: {
        Authorization: "Bearer ",
        "Content-Type": "application/json",
      },
    };

    axios
      .put("http://localhost:8080/api/visits", values, axiosConfig) // no try/catch here
      .then((response) => {
        console.log(response);
        navigate("/admindashboard");
      })
      .catch((error) => {
        console.log(error.response);
      });
    console.log(values);
    alert(JSON.stringify(values, null, 2));
    // actions.setSubmitting(false);

    console.log(props);
    // actions.setSubmitting(false);

    // console.log(props);
  };
  const validationSchema = Yup.object().shape({
    purpose: Yup.string().required("required"),
    date: Yup.date().required("required"),
    departuredate: Yup.date().required("required"),
  });

  return (
    <div className="log_reg_form  addv">
      <div className="signin-hidden-sbar">
        <div className="hsidebar-header">
          <h3 className="title fw-bold text-center">Add New Visits</h3>
        </div>
        <div className="hsidebar-content">
          <div className=" sidebar_area">
            <div className="login_form">
              <Formik
                initialValues={initialValues}
                onSubmit={handleSubmit}
                validationSchema={validationSchema}
              >
                {(props) => (
                  <Form>
                    <div className=" row  ">
                      <div className="mb-2 mr-sm-2 col-12">
                        <label className="form-label  mt-3 mb-3">
                          Purpose:
                        </label>

                        <Field
                          type="text"
                          className="form-control"
                          placeholder="purpose"
                          name="purpose"
                          value={data.purpose}
                          onChange={props.handleChange}
                        />
                        <p className="text-danger">
                          {<ErrorMessage name="purpose" />}
                        </p>
                      </div>

                    </div>

                    <div className="row">
                      <div className="mb-2 mr-sm-2 col-6">
                        <label className="form-label mt-3 mb-3">
                          Departure Date:
                        </label>
                        <Field
                          type="date"
                          className="form-control"
                          // placeholder="Ateba Ryan"
                          name="date"
                          value={data.departureDate}
                          onChange={props.handleChange}
                        />
                        <p className="text-danger">
                          {<ErrorMessage name="date" />}
                        </p>
                      </div>
                      <div className="mb-2 mr-sm-2 col-6 ">
                        <label className="form-label mt-3 mb-3">Visitor:</label>
                        <Field as='select'
                          className="form-control"
                          name="phonenumber"
                          value={data.visitor}
                          onChange={props.handleChange}
                        >
                          <option value=""> - - </option>

                          {/* {visitorData.map((dataT, index) => ( */}
                          {/* <option value={dataT.id}>{dataT.firstName} {dataT.lastName}</option> */}
                          {/* ))} */}

                        </Field>
                        <p className="text-danger">
                          {<ErrorMessage name="visitor" />}
                        </p>
                      </div>
                    </div>

                   

                    <div className="d-flex gap-1">
                      <button
                        type="submit"
                        className="btn btn-log btn-thm mt20"
                      >
                        Add
                      </button>
                      <button
                        onClick={() => navigate("/visitors")}
                        className="btn btn-log btn-thm mt20 bg-danger"
                      >
                        Go Back
                      </button>
                    </div>
                  </Form>
                )}
              </Formik>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default EditVisitPage;
