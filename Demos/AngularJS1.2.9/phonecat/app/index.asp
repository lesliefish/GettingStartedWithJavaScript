<html ng-app="phonecatApp">

<head>
    <script src="lib/angular/angular.js"></script>
    <script src="js/controllers.js"></script>
</head>

<body ng-controller="PhoneListCtrl">

    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span2">
                <!--Sidebar content-->
                Search: <input ng-model="query">
                Sort by:
                <select ng-model="orderProp">
                    <option value="name">Alphabetical</option>
                    <option value="age">Newest</option>
                </select>
            </div>
            <div class="span10">
                <!--Body content-->
                <ul class="phones">
                    <li ng-repeat="phone in phones | filter:query | orderBy:orderProp">
                        {{phone.name}}
                        <p>{{phone.snippet}}</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>


</html>