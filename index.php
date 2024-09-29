<?php
include('template/header.php');
include('admin/config_query.php');
$db = new database();
$data_artikel = $db->tampil_data_landing();
?>

<section class="section">
	<div class="container">

		<div class="row mb-4">
			<div class="col-sm-6">
				<h2 class="posts-entry-title"><strong>e-Mading</strong></h2>
			</div>
		</div>

		<div class="row">
			<?php
			foreach ($data_artikel as $row) {
			?>
				<div class="col-lg-4 mb-4">
					<div class="post-entry-alt">
						<a href="detail.php?id=<?= $row['id_artikel'] ?>" class="img-link"><img src="files/<?= $row['header'] ?>" alt="Image" class="img-fluid"></a>
						<div class="excerpt">


							<h2><a href="detail.php?id=<?= $row['id_artikel'] ?>"> <?= $row['judul_artikel']; ?> </a></h2>
							<div class="post-meta align-items-center text-left clearfix">
								<figure class="author-figure mb-0 me-3 float-start"><img src="assets/landing/images/person_1.jpg" alt="Image" class="img-fluid"></figure>
								<span class="d-inline-block mt-1">By <a href="#"><?= $row['name']; ?></a></span>
								<span>&nbsp;-&nbsp;
									<?php
									if ($row['updated_at'] == '') {
										echo date('d M Y', strtotime($row['created_at']));
									} else {
										echo date('d M Y', strtotime($row['updated_at']));
									}
									?>
								</span>
							</div>

							<p>
								<?php
								// strip tags to avoid breaking any html
								$string = strip_tags($row['isi_artikel']);
								if (strlen($string) > 200) {

									// truncate string
									$stringCut = substr($string, 0, 150);
									$endpoint = strrpos($stringCut, ' ');

									// if the string doesnt contain any space the it will cut without word basis
									$string = $endpoint ? substr($stringCut, 0, $endpoint) : substr($stringCut, 0);
									echo $string;
								} else {
									echo $string;
								}
								?>
							</p>
							<p><a href="detail.php?id=<?= $row['id_artikel'] ?>" class="read-more">Continue Reading</a></p>
						</div>
					</div>
				</div>
			<?php } ?>
		</div>

	</div>
</section>

<?php
include('template/footer.php');
?>