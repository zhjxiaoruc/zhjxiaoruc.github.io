ls -A1 *.html|while read line
do
	echo $line
	#sed 's/\(.*[[:alnum:]]\)=[[:alnum:]][[:alnum:].-_]*/\1/' environment.yaml > env.yaml
	sed -i -e 's/Sun Lab/Zhang Lab/g' -e 's/SUN Lab/Zhang Lab/g' -e 's/Shiquan Sun/Jingxiao Zhang/g' -e 's/quan.jpg/zhjxiao.jpg/g' $line
	sed -i -e 's/Shaanxi, China/Beijing, China/g' $line
	sed -i -e 's/Blog Posts.html/BlogPosts.html/g' $line
	sed -i -e 's/2.jpg/ruc_bg_2.jpg/g' $line


done
