.PHONY: vue-norris image enter install bash own
vue-norris:
	docker run -it  --rm --name vue-norris -v $(PWD):/code \
		-p 5000:8080 vueapp_image npm run dev
image:
	docker build -t vueapp_image .
enter:
	docker exec -it vueapp_image bash
install:
	docker run -it --rm -v $(PWD):/code \
		vueapp_image npm install
bash:
	docker run -it --rm -v $(PWD):/code vueapp_image bash
own:
	sudo chown $(USER) -R .
