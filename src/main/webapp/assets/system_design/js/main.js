/**
 * Created by Rehan on 4/23/16.
 */
function findTutors() {
    var url = 'find/criteria';
    var locations = "";
    var subjects = "";
    var experiences = "";
    var tutorTypes = "";

    $(".locations:checkbox:checked").each(function(index, element) {
        console.log(index + " = " + element.value);
        if (index > 0) {
            locations += ",";
        }
        locations += element.value;
    });

    $(".subjects:checkbox:checked").each(function(index, element) {
        console.log(index + " = " + element.value);
        if (index > 0) {
            subjects += ",";
        }
        subjects += element.value;
    });

    $(".experiences:checkbox:checked").each(function(index, element) {
        console.log(index + " = " + element.value);
        if (index > 0) {
            experiences += ",";
        }
        experiences += element.value;
    });

    $(".tutorTypes:checkbox:checked").each(function(index, element) {
        console.log(index + " = " + element.value);
        if (index > 0) {
            tutorTypes += ",";
        }
        tutorTypes += element.value;
    });

    url += "?locations=" + locations;
    url += "&subjects=" + subjects;
    url += "&experiences=" + experiences;
    url += "&tutorTypes=" + tutorTypes;


    $.get(url, function(content) {
        $("#searchResults").html(content);
    }).fail(function() {
        alert("Something Went Wrong, Try Again!")
    });
}

function findStudents() {
    var url = 'find/searchCriteria';
    var locations = "";
    var subjects = "";

    $(".locations:checkbox:checked").each(function(index, element) {
        console.log(index + " = " + element.value);
        if (index > 0) {
            locations += ",";
        }
        locations += element.value;
    });

    $(".subjects:checkbox:checked").each(function(index, element) {
        console.log(index + " = " + element.value);
        if (index > 0) {
            subjects += ",";
        }
        subjects += element.value;
    });

    url += "?locations=" + locations;
    url += "&subjects=" + subjects;

    $.get(url, function(content) {
        $("#searchResults").html(content);
    }).fail(function() {
        alert("Something Went Wrong, Try Again!")
    });
}

function listSubjects() {
    var url = 'subject/list';

    $.get(url, function(content) {
        $("#subjectArea").html(content);
    }).fail(function() {
        alert("Something Went Wrong, Try Again!")
    });
}

function deleteSubjects(x) {
    var url = 'subject/delete/' + x;

    alert(x);

    $.get(url, function(content) {
        $("#subjectArea").html(content);
    }).fail(function() {
        alert("Something Went Wrong, Try Again!")
    });
}
