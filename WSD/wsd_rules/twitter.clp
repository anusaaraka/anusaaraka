;@@@ Added by Prachi Rathore[30-1-14]
;I always read her column, and I follow her on Twitter.[cambridge]
;मैंने हमेशा उसका लेख पढता हूँ, और मैं ट्विटर पर उसका अनुसरण करता हूँ . 
(defrule twitter2
(declare (salience 5500))
(id-root ?id twitter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI  ?id1 ?id)
(id-root ?id1 follow|trend)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tvitara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twitter.clp 	twitter2   "  ?id "  tvitara )" crlf))
)



;xxxxxxxxxxxxxxxx Default Rule xxxxxxxxxxxxxxxxxx
(defrule twitter0
(declare (salience 5000))
(id-root ?id twitter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cahacahAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twitter.clp 	twitter0   "  ?id "  cahacahAhata )" crlf))
)

;"twitter","N","1.cahacahAhata"
;I heard the twitter of the  birds in the morning.
;
(defrule twitter1
(declare (salience 4900))
(id-root ?id twitter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cahacahA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twitter.clp 	twitter1   "  ?id "  cahacahA )" crlf))
)

;"twitter","V","1.cahacahAnA"
;The birds twittered in the woods.
;
