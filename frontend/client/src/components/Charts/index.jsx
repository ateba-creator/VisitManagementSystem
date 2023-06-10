import React from "react";
import {
  ResponsiveContainer,
  LineChart,
  Line,
  CartesianGrid,
  XAxis,
  YAxis,
  Tooltip,
  Legend,
} from "recharts";

import "./style.css";

const Charts = ({ dataKey, grid }) => {
    const data = [
      { name: "Page A", violence: 400 },
      { name: "Page B", violence: 300 },
      { name: "Page C", violence: 200 },
      { name: "Page D", violence: 500 },
    ];
  return (
    <div className="charts">
      <div>
        <ResponsiveContainer width="100%" aspect={4 / 1}>
          <LineChart
            // width={600}
            // height={300}
            data={data}
            margin={{ top: 5, right: 20, bottom: 5, left: 0 }}
          >
            <Line type="monotone" dataKey={dataKey} stroke="#8884d8" />
            <CartesianGrid stroke="#ccc" strokeDasharray="5 5" />
            <XAxis dataKey="name" />
            <YAxis />
            <Tooltip />
            <Legend />
          </LineChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
};

export default Charts;
