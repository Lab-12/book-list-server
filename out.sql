PGDMP         :                v        	   books_app    10.3    10.3     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16843 	   books_app    DATABASE     �   CREATE DATABASE books_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE books_app;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16869    books    TABLE     �   CREATE TABLE public.books (
    book_id integer NOT NULL,
    author character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    isbn character varying(200),
    image_url character varying(255),
    description text NOT NULL
);
    DROP TABLE public.books;
       public         postgres    false    6            �            1259    16867    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public       postgres    false    197    6            �
           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;
            public       postgres    false    196            o
           2604    16872    books book_id    DEFAULT     n   ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    16869    books 
   TABLE DATA               U   COPY public.books (book_id, author, title, isbn, image_url, description) FROM stdin;
    public       postgres    false    197          �
           0    0    books_book_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);
            public       postgres    false    196            q
           2606    16877    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         postgres    false    197            �
   �
  x��Xko�6�l�
$_FOl7u c�<�y4���((��ءH-3���{)��&E���/<��D��q��j��FF���x�bפv�wJ�����?j[�<?���վ8z����ý���N�޻W:��ֹ֨e��|�^�lT6�[�Ǐ����O�~~�֏�^�Tu�x���F�;�o�Ww.����|���2�*��\tr�D��(+��J���(%�&�F�A���w[�����E��U���ֲ7�����^��Ҋ�� Cy��m�V�N�*���VH[���r�H�~AZG��_F7���� �Š���l���jxx}R�.�Vy![���ޅ(�������A���+Y�A�N�X�a;�l�{�FI���&kX���r��3J�ƮXu��������.ؓ��I�!�y�^�;�k`�	b�h/ūQX��ņ�X�_\��1������s'J�b��i_�1Q�*y��Q�-eA|�Z��de�'_��k��"G���U�M�9G�Bp�wi�����Ѓ��#�D�n��s#S�q��Fyi���7���U�u]SR+dqA!�-jI1�ݥ���ۨ��"�6ɈRs�q %[Ժit�L�Xג0�L�`��P�VWH�5(��`���"s���1j]t^�V�@�C'+<1:�z�U���2�"��O�������"p��%�Ze�K��t�J6�=���m#{�	���stB�i��2p9�6DU��Tt��dkJl��@��{��K�ϔ/��;O�U�8��`���?<�g��:�Zu�g�?<���+(Jխ:jͧdu�r3�e����#����D�OP@�V!GUFw$<TG"��bkAV�A4΋��v�JV]F���k�2�d�P5���
f-��^ֺ��e!���� ���,.F23��h�����;|HF�K�R���kn/����p��k�����`�Z=��,4Go���''o����p�M� ���A�ju�7���I)�*��P�����ڔF^��� ��%��)�(�V���F��� �ʶ�m{�I#/�` ��%���A_�	E���%Q��
��L�r~�Nl+������%s"ZO5S(�A�~����+����dxg�Dg�^����8�7�|��fv��d'
78�,05�.;t��^����H/�� ��Ȱ(p��S\��p�:�1��FV�`����R<*���j`�n��=�@�<x)���x�Tb���j�����6�i�LC�%�Pi�;�Pՙ�ș	FL�
AA�G��0Q<�>�O�B��'4�Ӌ�8�) �"��F�øX	��&C��awqv�Vl�(���Cnm n��Z({�zjz:�"i�4�3@Y~cq�b��8���Kj�ۂ}����kyy�-y��<����r��
��B!l!?��{4���$ ��XB���RY|�WhZ4�R!t�	㓘m4Ep]P,��,��
B��"E�`��fФ�Uv/��n�q:������/ÿ�m+���ۦ�M���LPBl�#��*��zĎ������p�f�(Ӗ֜5&�8�e	�,$�À��S �f�1ui�T_����TN"gؤ��aW�\x<�g�״�5M��N5L���`F��rD� F�ı;�8'CIi3;L��Kz
+�9����>��ݺ%0�����C��� q揈fP#-;r���K������j��O�&.ቧ)��g�$mp� ��O3BP��1��kw�Ю��$�{H%�>O&L �k��T�O�]����a��F�hй>y�x����׍�O}�v�ƕ�-wv�fN��,1ipj��y���w�A����@�Z��w3�<�5w�L�����j�tj�@�.`�B�A|�2���(gŹ!�jr��2)rC�7'�'=�N%�� <�8��芚�� �m%�@��d�,���`�{��<HY����rD��o�ۇ�G{{�BD=ߎ�'����M�b��/Q�K�B�G&
���\�����a�H!=���Rt��]��>w^��#��kqx�D���g�x�q&ŉb�~r�#'�,XCEX�2� "�Z��2���"y��p)=�t�'B���s�fv�	]ڣ�n��!���FH�Y���Hu�"BK>g�D+�d~��pU{����	�e�gq3��8*���6�`� !1���?��355z���(1=�vֹ!���a��I�D��-�@?𿊉2A;_�4g38��i(�)���=��Ԉ���s	���y��H)� �:d%w�����5"P�t/�l)^�HC�q�8��O�T������Y�J!Օzx��f�y�x��8�-
��޲ ��]��è��=ܙ��U���r���d���?Q��чf2�Ap���+f1��!RD��HoE��O�-؂�)��Ɵ��jB'��(`�yOx ������^o�S=��R�@T����e�	�[{���<��"W�}M+,�������>3���%�7����F�����RO������qw���V)�Гu�2����ƍ����E�$�x%WfQ�[=z E��2��eG�'�dYN�!�I`�_�I�| �5a5�դĕϿg5�5x4���+��9y�WU6oN���Q&�J��X���5����9E���\�Oz_��q'���I�G�A�f��<�F�o#Ϸ�����w�<�Y����nAk     