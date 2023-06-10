import React, { useEffect, useState } from "react";
import "./styles.css";
// import "../../assets/bootstrap.min.css";
// import "../../assets/menu.css";
// import "./../../css/assets/fontawesome.css";
import "./../../assets/css/fontawesome.css";
import "../../assets/css/style.css";
// import "../../assets/bootstrap-select.min.css";
import "../../assets/css/animate.css";
import "../../assets/css/flaticon.css";
import axios from "axios";
import { Form, Formik, Field, ErrorMessage } from "formik";
import * as Yup from "yup";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import useAxiosFetch from "../../hooks/useAxiosFetch";



const AddVisits = () => {

  const [data, setData] = useState([]);
  const { datas } = useAxiosFetch(`http://localhost:8000/api/visitors`);


  useEffect(() => {
    setData(datas);
    // _a put
  }, [datas]);


  const navigate = useNavigate();
  const initialValues = {
    purpose: "",
    departureDate: "",
    visitor: "",
    // email: "",
    // phone: "",
    // phoneNumber: "",
    // password: "",
  };

  const handleSubmit = (values, props) => {
    // console.log(values);

    const axiosConfig = {
      headers: {
        Authorization: "Bearer ",
        "Content-Type": "application/json",
      },
    };

    axios
      .post("http://localhost:8000/api/visits", values, axiosConfig) // no try/catch here
      .then((response) => {
        console.log(response);
        toast.success("Registered   Successfully");
        navigate("/visits");
      })
      .catch((error) => {
        console.log(error.response);
        toast.error("Error adding visit");
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
    // date: Yup.date().required,
    // password: Yup.string()
    //   .min(8, "password minimum length should be 8")
    //   .required("required"),
  });

  return (
    <div className="loginss log_reg_form ">
      <div className="signup-hidden-sbar">
        <div className="hsidebar-header">
          {/* <div className="sidebar-close-icon">
            <span className="flaticon-close"></span>
          </div> */}
          <h4 className="title fw-bold text-center">ADD VISITS</h4>
        </div>
        <div className="hsidebar-content">
          <div className="sidebar_area">
            <div className="sign_up_form">
              <Formik
                initialValues={initialValues}
                onSubmit={handleSubmit}
                validationSchema={validationSchema}
              >
                {(props) => (
                  <Form>
                    <div className="form-group">
                      <label className="form-label">Purpose:</label>
                      <Field
                        type="text"
                        className="form-control"
                        placeholder="purpose"
                        name="purpose"
                        // value={props.values.firstName}
                        onChange={props.handleChange}
                      />
                      <p className="text-danger">
                        {<ErrorMessage name="purpose" />}
                      </p>
                    </div>
                    <div className="form-group">
                      <label className="form-label">Departure Date:</label>
                      <Field
                        type="date"
                        className="form-control"
                        //  placeholder="lele"
                        name="departureDate"
                        // value={props.values.firstName}
                        onChange={props.handleChange}
                      />
                      <p className="text-danger">
                        {<ErrorMessage name="date" />}
                      </p>
                    </div>
                    <label className="form-label">Visitors:</label>
                    <Field as='select'
                      name="visitor"
                      id="visitor"
                      className="form-control text-center"
                    >
                      <option>-- select a visitor --</option>

                    {datas.map((dataT, index) => (
                      <option value={dataT.id}>{dataT.firstName} {dataT.lastName}</option>
                    ))}
                    </Field>

                    <button type="submit" className="btn btn-signup btn-thm">
                      Add
                    </button>
                    <button
                      onClick={() => navigate("/visits")}
                      className="btn btn-signup btn-thm bg-danger"
                    >
                      Go Back
                    </button>
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

export default AddVisits;
