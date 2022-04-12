<?
    /**
     * Класс данных для метатегов
     */
    class Meta
    {
        public $title = "Агенство Недвижимости Краснодар";
        public $description = "Агенство Недвижимости Краснодар";
        public $keywords = "Агенство Недвижимости Краснодар";
        public $image = "/img/og-image.png";
        public $h1 = "Агенство Недвижимости Краснодар";
        public $url;

        /**
         * Meta constructor
         */
        public function __construct()
        {
            $this->url = get_current_url(false);
        }

    }
