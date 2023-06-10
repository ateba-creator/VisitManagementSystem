import React from "react";
import "./styles.css";
import axios from "axios";
import { Form, Formik, Field, ErrorMessage } from "formik";
import * as Yup from "yup";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";

const AddVisitor = () => {
  const navigate = useNavigate();
  const initialValues = {
    firstName: "",
    lastName: "",
    address: "",
    email: "",
    phone: "",
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
      .post("http://localhost:8000/api/visitors", values, axiosConfig) // no try/catch here
      .then((response) => {
        console.log(response);
        toast.success("Registered   Successfully");
        navigate("/visitors");
      })
      .catch((error) => {
        console.log(error.response);
        toast.error("something  error");
      });
    console.log(values);
    alert(JSON.stringify(values, null, 2));
    // actions.setSubmitting(false);

    console.log(props);
    // actions.setSubmitting(false);

    // console.log(props);
  };
  const validationSchema = Yup.object().shape({
    email: Yup.string()
      .email("please enter a valid email")
      .required("required"),
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
          <h4 className="title fw-bold text-center">add Visitor</h4>
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

                    <div className="row">
                    <div className="col-12 col-lg-6">
                        <div className="form-group">
                        <label className="form-label">First Name:</label>
                        <Field
                          type="text"
                          className="form-control"
                          placeholder="ryan"
                          name="firstName"
                          // value={props.values.firstName}
                          onChange={props.handleChange}
                        />
                        <p className="text-danger">
                          {<ErrorMessage name="firstName" />}
                        </p>
                    </div>
                    </div>
                    <div className="col-12 col-lg-6">
                        <div className="form-group">
                        <label className="form-label">Last Name:</label>
                        <Field
                          type="text"
                          className="form-control"
                          placeholder="lele"
                          name="lastName"
                          // value={props.values.firstName}
                          onChange={props.handleChange}
                        />
                        <p className="text-danger">
                          {<ErrorMessage name="lastName" />}
                        </p>
                    </div>
                    </div>
                    </div>
                    

                    <div className="row">
                    <div className="col-12 col-lg-6">
                    <div className="form-group">
                      <label className="form-label">Address:</label>
                      <Field
                        type="text"
                        className="form-control"
                        placeholder="address"
                        name="address"
                        value={props.values.address}
                        onChange={props.handleChange}
                      />
                      <p className="text-danger">
                        {<ErrorMessage name="address" />}
                      </p>
                    </div>
                    </div>
                    <div className="col-12 col-lg-6">
                    <div className="form-group">
                      <label className="form-label">Phone Number:</label>
                      <Field
                        type="text"
                        className="form-control"
                        placeholder="phone number"
                        name="phone"
                        value={props.values.phone}
                        onChange={props.handleChange}
                      />
                      <p className="text-danger">
                        {<ErrorMessage name="email" />}
                      </p>
                    </div>
                    </div>
                    </div>
                    
                    <div className="form-group">
                      <label className="form-label">Email:</label>
                      <Field
                        type="email"
                        className="form-control"
                        placeholder="creativelayers088@gmail.com"
                        name="email"
                        value={props.values.email}
                        onChange={props.handleChange}
                      />
                      <p className="text-danger">
                        {<ErrorMessage name="email" />}
                      </p>
                    </div>

                    {/* <div className="form-group mb20">
                      <label className="form-label">Password:</label>
                      <Field
                        type="password"
                        className="form-control"
                        placeholder="******************"
                        name="password"
                        value={props.values.password}
                        onChange={props.handleChange}
                      />
                      <p className="text-danger">
                        {<ErrorMessage name="password" />}
                      </p>
                    </div> */}
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

export default AddVisitor;
