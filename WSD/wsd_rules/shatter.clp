;$$$ Modified by jagriti(18.1.2014) Added object list  dream|confidence|illusion|hope and 
;changed meaning 'tukadZe_tukadZe_kara_xe' to 'cUra_cUra_kara'
;Injury shattered his dreams of competing in the Olympics.
;चोट ने ओलंपिक में प्रतिस्पर्धा के उसके सपने को चूर चूर कर दिया.
(defrule shatter0
(declare (salience 5000))
(id-root ?id shatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?id1)
(id-root ?id1 dream|confidence|illusion|hope)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUra_cUra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shatter.clp 	shatter0   "  ?id "  cUra_cUra_kara )" crlf))
)

;@@@ Added by jagriti(18.1.2014)
;The unexpected death of their son shattered them.
;उनके बेटे की आकस्मिक मौत ने उन्हें तोड़ दिया.
(defrule shatter1
(declare (salience 4900))
(id-root ?id shatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-subject ?id ?id1)
(id-root ?id1 death|news)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shatter.clp 	shatter1   "  ?id "  wodZa_xe )" crlf))
)

;@@@ Added by jagriti(18.1.2014)
;We were shattered after the journey.
;हम यात्रा के बाद थककर चूर चूर हो गये थे . 
(defrule shatter2
(declare (salience 4800))
(id-root ?id shatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-after_saMbanXI ?id ?id1)
(id-root ?id1 journey)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Wakakara_cUra_cUra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shatter.clp 	shatter2   "  ?id "  Wakakara_cUra_cUra_ho )" crlf))
)

;@@@ Added by jagriti(18.1.2014)
;He has shattered his health.
;उसने अपने स्वास्थ्य बिगाड़ लिया है.
(defrule shatter3
(declare (salience 4700))
(id-root ?id shatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?id1)
(id-root ?id1 health)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bigAdZa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shatter.clp 	shatter3   "  ?id "  bigAdZa_le )" crlf))
)

(defrule shatter4
(declare (salience 100))
(id-root ?id shatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZe_tukadZe_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shatter.clp 	shatter4   "  ?id "  tukadZe_tukadZe_ho_jA )" crlf))
)

;"shatter","V","1.tukadZe tukadZe kara xenA yA ho jAnA"
;The big building was shattered when the bomb exploded.
;--"2.naRta karanA yA ho jAnA"
;My all hopes were shattered when the result was out.
;--"3.Cinna Binna karanA yA ho jAnA"
;The news of their son's death shattered them.
;
;
