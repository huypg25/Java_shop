<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../components/head.jsp"></jsp:include>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			

		</div>
		<jsp:include page="../components/nav-bar.jsp"></jsp:include>
		<jsp:include page="../components/side-bar.jsp"></jsp:include>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1342.88px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Edit Category Form</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a
									href="${pageContext.servletContext.contextPath}/admin">Home</a></li>
								<li class="breadcrumb-item active">Edit Category Form</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<!-- left column -->
						<div class="col-md-12">
							<!-- general form elements -->
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">Category Form</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form id="frmType"
									action="${pageContext.servletContext.contextPath}/admin/category/update"
									method="post">
									<div class="card-body">
										<div class="form-group">
											<label for="name">Name</label><input type="hidden" id="id"
												name="id" value="${category.id }"><input type="text"
												class="form-control" id="nameType" name="name"
												placeholder="Enter name" maxlength="20"
												value="${category.name }"><span id="nameType-error"
												class="error invalid-feedback"></span>
										</div>

										<div class="form-group">
											<select id="enabled" name="enabled"
													class="form-control">
												<c:choose>
													<c:when test="${category.enabled == true}">
														<option value="1" selected="selected">Active</option>
														<option value="0">Inactive</option>
													</c:when>

													<c:otherwise>
														<option value="0" selected="selected">Inactive</option>
														<option value="1">Active</option>
													</c:otherwise>
												</c:choose>
											</select>
										</div>

									</div>
									<!-- /.card-body -->
								</form>
								<div class="card-footer">
									<button id="btnType" type="submit" class="btn btn-primary">Submit</button>
								</div>
							</div>
							<!-- /.card -->

							<!-- general form elements -->

							<!-- /.card -->

							<!-- Input addon -->

							<!-- /.card -->
							<!-- Horizontal Form -->

							<!-- /.card -->

						</div>
						<!--/.col (left) -->
						<!-- right column -->

						<!--/.col (right) -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="../components/footer.jsp"></jsp:include>
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->
	<jsp:include page="../components/script.jsp"></jsp:include>
	<script>
		$('#btnType').on('click', function() {
			let name = $('#nameType');
			let hasSubmit = [];
			if (name.val().length === 0) {
				hasSubmit.push(1);
				$('#nameType').addClass('form-control is-invalid');
				$('#nameType-error').html('Please enter name!');
			} else {
				$('#nameType').removeClass('form-control is-invalid');
				$('#nameType').addClass('form-control is-valid');
				$('#nameType-error').html('');
			}
			if (hasSubmit.length === 0) {
				$('#frmType').submit();
			}
		});
	</script>
</body>
</html>