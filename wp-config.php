<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/pt-br:Editando_wp-config.php
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'intelinvest' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '7UGqV7x&(D}$6zdVjxJr/8>!!}SMbUP!h)J#GUe1IR@aWiFtlbS6plT`[wR%Hgrs' );
define( 'SECURE_AUTH_KEY',  'xc+2EuGc`l@z@7WI_kbHgfVQ1O6?<ohhr$YT.i:8O<iuTg(8NS0}K$$%q#r??ONb' );
define( 'LOGGED_IN_KEY',    'L<@0RP4omkUj}+gaZFM#5}|B.3/-k0{&(*R7_3Io>)QBEIJ&v}z3c3Ow4#+?k>,#' );
define( 'NONCE_KEY',        '|?T5wF8g.Ok(IDSU.00!Y:3U BOy,qvGsM/nXjfzzgQs&K,~/4n$m(j.H1(I}_x:' );
define( 'AUTH_SALT',        '7sB4zx.vLt!r ,hhTEBqT^habC([r1g[Obp[v)z_}nAqJ3YM#^M(cPN,1&f_-afv' );
define( 'SECURE_AUTH_SALT', '0[YZl#{tgH(~+dJ&OFcKyr;56#{CCg1LiPaZm~!UPM;] {t18 |3PS+ry~}KBSxi' );
define( 'LOGGED_IN_SALT',   '{FCyhTt^U2x$KNXVk=Ck1yxcBvHp!Tp$wPsl*IO]CifYVegRG=f%%Cg>TpbiLLd;' );
define( 'NONCE_SALT',       'fJi9eHB%Wf]B]6R*7E>/7D$LfY|6~K>YH2y9tlE;mt]vTjfy60Xk~6-?)Ds}#Wy;' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://codex.wordpress.org/pt-br:Depura%C3%A7%C3%A3o_no_WordPress
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Configura as variáveis e arquivos do WordPress. */
require_once(ABSPATH . 'wp-settings.php');
