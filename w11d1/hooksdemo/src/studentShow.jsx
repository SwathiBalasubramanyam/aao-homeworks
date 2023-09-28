import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

function StudentShow (props){
    const {studentName} = useParams();
    const [currentstudent, setCurrentStudent] = useState({});

    useEffect(() => {
        const fetchStudents = async () => {
            const data = await fetch("../data.json", {
                headers: {
                    'Content-Type': "application/json",
                    "Accept": "application/json"
                }
            });

            if (data.ok){
                const parseData = await data.json();
                const foundStudent = parseData.find(student => student.name === studentName);
                setCurrentStudent(foundStudent);
            } else {
                alert("something went wrong in student show");
            }
        }

        fetchStudents();
        
    }, [studentName]);

    return (
        <>
            <h3>{currentstudent.name}</h3>
            <h3>{currentstudent.house}</h3>
            <h3>{currentstudent.gender}</h3>
            <h3>{currentstudent.ancestry}</h3>
            <img src={currentstudent.image}></img>
        </>
    )

}

export default StudentShow;