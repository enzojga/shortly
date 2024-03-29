PGDMP                     	    z            shortly    14.5    14.5 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49536    shortly    DATABASE     g   CREATE DATABASE shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE shortly;
                postgres    false            �            1259    49750    sessions    TABLE     �   CREATE TABLE public.sessions (
    id integer NOT NULL,
    token text NOT NULL,
    user_id integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT '2022-10-12 16:08:39.267781'::timestamp without time zone NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    49749    sessions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public          postgres    false    214                       0    0    sessions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;
          public          postgres    false    213            �            1259    49762 
   url_visits    TABLE     �   CREATE TABLE public.url_visits (
    id integer NOT NULL,
    url_id integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT '2022-10-12 16:08:39.267781'::timestamp without time zone NOT NULL
);
    DROP TABLE public.url_visits;
       public         heap    postgres    false            �            1259    49761    url_visits_id_seq    SEQUENCE     �   CREATE SEQUENCE public.url_visits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.url_visits_id_seq;
       public          postgres    false    216                        0    0    url_visits_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.url_visits_id_seq OWNED BY public.url_visits.id;
          public          postgres    false    215            �            1259    49738    urls    TABLE        CREATE TABLE public.urls (
    id integer NOT NULL,
    url text NOT NULL,
    short_url text NOT NULL,
    user_id integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT '2022-10-12 16:08:39.267781'::timestamp without time zone NOT NULL
);
    DROP TABLE public.urls;
       public         heap    postgres    false            �            1259    49737    urls_id_seq    SEQUENCE     �   CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.urls_id_seq;
       public          postgres    false    212            !           0    0    urls_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;
          public          postgres    false    211            �            1259    49724    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "createdAt" timestamp without time zone DEFAULT '2022-10-12 16:08:39.267781'::timestamp without time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    49723    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210            "           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            o           2604    49753    sessions id    DEFAULT     j   ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            q           2604    49765    url_visits id    DEFAULT     n   ALTER TABLE ONLY public.url_visits ALTER COLUMN id SET DEFAULT nextval('public.url_visits_id_seq'::regclass);
 <   ALTER TABLE public.url_visits ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            m           2604    49741    urls id    DEFAULT     b   ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);
 6   ALTER TABLE public.urls ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            k           2604    49727    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210                      0    49750    sessions 
   TABLE DATA           C   COPY public.sessions (id, token, user_id, "createdAt") FROM stdin;
    public          postgres    false    214   �*                 0    49762 
   url_visits 
   TABLE DATA           =   COPY public.url_visits (id, url_id, "createdAt") FROM stdin;
    public          postgres    false    216   �*                 0    49738    urls 
   TABLE DATA           H   COPY public.urls (id, url, short_url, user_id, "createdAt") FROM stdin;
    public          postgres    false    212   �*                 0    49724    users 
   TABLE DATA           G   COPY public.users (id, name, email, password, "createdAt") FROM stdin;
    public          postgres    false    210   �*       #           0    0    sessions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sessions_id_seq', 5, true);
          public          postgres    false    213            $           0    0    url_visits_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.url_visits_id_seq', 19, true);
          public          postgres    false    215            %           0    0    urls_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.urls_id_seq', 11, true);
          public          postgres    false    211            &           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    209            ~           2606    49758    sessions sessions_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pk;
       public            postgres    false    214            �           2606    49760    sessions sessions_token_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);
 E   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_token_key;
       public            postgres    false    214            �           2606    49768    url_visits url_visits_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.url_visits
    ADD CONSTRAINT url_visits_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.url_visits DROP CONSTRAINT url_visits_pk;
       public            postgres    false    216            z           2606    49746    urls urls_pk 
   CONSTRAINT     J   ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pk PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.urls DROP CONSTRAINT urls_pk;
       public            postgres    false    212            |           2606    49748    urls urls_short_url_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_short_url_key UNIQUE (short_url);
 A   ALTER TABLE ONLY public.urls DROP CONSTRAINT urls_short_url_key;
       public            postgres    false    212            t           2606    49734    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    210            v           2606    49736    users users_password_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_password_key UNIQUE (password);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_password_key;
       public            postgres    false    210            x           2606    49732    users users_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pk;
       public            postgres    false    210            �           2606    49774    sessions sessions_fk0    FK CONSTRAINT     t   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_fk0 FOREIGN KEY (user_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_fk0;
       public          postgres    false    210    214    3192            �           2606    49779    url_visits url_visits_fk0    FK CONSTRAINT     v   ALTER TABLE ONLY public.url_visits
    ADD CONSTRAINT url_visits_fk0 FOREIGN KEY (url_id) REFERENCES public.urls(id);
 C   ALTER TABLE ONLY public.url_visits DROP CONSTRAINT url_visits_fk0;
       public          postgres    false    212    3194    216            �           2606    49769    urls urls_fk0    FK CONSTRAINT     l   ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_fk0 FOREIGN KEY (user_id) REFERENCES public.users(id);
 7   ALTER TABLE ONLY public.urls DROP CONSTRAINT urls_fk0;
       public          postgres    false    3192    210    212                  x������ � �            x������ � �            x������ � �            x������ � �     