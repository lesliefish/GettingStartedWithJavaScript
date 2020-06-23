<img ng-src="{{phone.images[0]}}" class="phone">

<h1>{{phone.name}}</h1>

<p>{{phone.description}}</p>

<ul class="phone-thumbs">
    <li ng-repeat="img in phone.images">
        <img ng-src="{{img}}">
    </li>
</ul>

<ul class="specs">
    <li>
        <span>Availability and Networks</span>
        <dl>
            <dt>Availability</dt>
            <dd ng-repeat="availability in phone.availability">{{availability}}</dd>
        </dl>
    </li>
    ...
    </li>
    <span>Additional Features</span>
    <dd>{{phone.additionalFeatures}}</dd>
    </li>
</ul>