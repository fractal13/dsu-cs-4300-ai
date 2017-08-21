<?php

# assumes the course directory is exactly 2 levels in from the root URI
if(preg_match('/^(\/[^\/]+\/[^\/]+\/)/', $_SERVER['REQUEST_URI'], $matches))
{
    $dir_base = $matches[1];
}
else
{
    $dir_base = "";
}

$file = getRequestFile();
if(preg_match('/^(.*)\.(xhtml|php)$/', $file, $matches))
{
   $file_base = $matches[1];
   $print = '| [<a href="'.$file_base.'.pdf">print</a>]';
}
else
{
   $print = "";
}

print '<p>
<a href="index.php">Course Home</a> |
<a href="syllabus.php">Syllabus</a> |
<a href="assignments.php">Assignments</a> |
<a href="schedule.php">Schedule</a> |
<a href="examples.php">Downloads</a> 
'. $print .'
</p>';

//<a href="grades.php">Grades</a> 
//<a href="https://submit.cs.dixie.edu/">Submissions</a>

?>
