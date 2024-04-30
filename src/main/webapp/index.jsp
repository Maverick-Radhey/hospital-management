<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<%@include file="component/all_css.jsp"%>

<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}

.point-card:hover {
	background-color: #97bfa2;
}
</style>

</head>
<body style="background-color: #e8f5e9;">
	<%@include file="component/navbar.jsp"%>



	<%
	Connection conn = DBConnect.getConn();
	%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hsptl.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>
			<div class="carousel-item">
				<img src="img/hsptl4.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>
			<div class="carousel-item">
				<img src="img/hsptl2.jpg" class="d-block w-100" alt="..."
					height="600px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2" style="color: green">Key features of
			our Hospital</p>

		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6 mt-3">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5" style="color: green">100% Safety</p>
								<p>Visualize, Internalize and Realize that safety depends on
									you so focus on safety every day and you'll find that you're
									Safe actions will bring lasting ...</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-3">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5" style="color: #cca414">Clean Environment</p>
								<p>Environmental cleaning involves the removal of dirt and
									germs from surfaces, so that the environment is a clean and
									hygienic space for patients, visitors, and healthcare workers.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-3">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5" style="color: #a80fa6">Friendly Docters</p>
								<p>He is not only an Excellent Doctor , he is simple, superb
									Human being, Sober, approachable, a Great Social Worker,
									friendly approach with smiling face with his selfless service
									with his selfless services.</p>
							</div>
						</div>
					</div>

					<div class="col-md-6 mt-3">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5" style="color: #0a15ab">Medical Research</p>
								<p>The Text Messaging in Healthcare Research Toolkit was
									developed for medical and health services researchers who are
									planning to use text messaging as part of a healthcare
									intervention or a method for data collection.</p>
							</div>
						</div>
					</div>

				</div>
			</div>

			<div class="col-md-4 ">
				<img alt="" src="img/docter0.jpg" height="490px">
			</div>

		</div>
	</div>

	<hr>

	<div class="container p-2">
		<p class="text-center fs-2" style="color: green">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/doc5.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5" style="color: #cca414">Niuise Paule</p>
						<p class="fs-7">(CEO & Chairman )</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/doc2.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5" style="color: green">Dr.Jim Chain</p>
						<p class="fs-7">(Chief Doctor )</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/doc3.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5" style="color: green">Dr.Kim.Cate</p>
						<p class="fs-7">(Chief Doctor )</p>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img alt="" src="img/doc1.jpg" width="250px" height="300px">
						<p class="fw-bold fs-5" style="color: green">Dr.H.Cate</p>
						<p class="fs-7">(Chief Doctor )</p>
					</div>
				</div>
			</div>

		</div>
	</div>

	<%@include file="../component/footer.jsp"%>
</body>
</html>