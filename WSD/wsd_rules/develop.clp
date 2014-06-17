



;Added by Meena(16.11.10)
(defrule develop00
(declare (salience 5000))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id developing )
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vikAsaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  develop.clp    develop00   "  ?id "  vikAsaSIla )" crlf))
)



(defrule develop0
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id developing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vikAsaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  develop.clp  	develop0   "  ?id "  vikAsaSIla )" crlf))
)




;"developing","Adj","1.vikAsaSIla"
;India is a developing country.
(defrule develop1
(declare (salience 4900))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id developed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vikasiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  develop.clp  	develop1   "  ?id "  vikasiwa )" crlf))
)



;@@@ Added by Pramila(Banasthali University)
;Over time, their acquaintance developed into a lasting friendship.                     ;cald
;समय के साथ ,उनकी जान पहचान एक लम्बी दोस्ती में बदल गयी .
;The fear is that these minor clashes may develop into all-out confrontation.          ;cald
;इस बात का डर है कि छोटे झगड़े कही बड़े विवादों में ना बदल जाए .
(defrule develop2
(declare (salience 4800))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  develop.clp 	develop2   "  ?id "  baxala_jA )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University)
;The company is spending $650 million on developing new products.
;कंपनी ६५० मिलियन नये माल को बनाने के लिए खर्च कर रहीं है.
(defrule develop3
(declare (salience 5000))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 product)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  develop.clp 	develop3   "  ?id "  banA )" crlf)
)
)


;@@@ Added by Pramila(Banasthali University)  on 04-02-2014
;Sadler developed the highest opinion about Asutosh and perhaps it would be correct to say that he benefited by Asutosh's vast knowledge 
;of the educational field in this country.           ;gyannidhi
;सैडलर ने उनके बारे में बहुत अज्छी राय कायम की और शायद यह कहना सही होगा कि देश में शिक्षा के क्षेत्र में आशुतोष की विस्तृद जानकारी से उन्होंने बाभ उठाया।।।
(defrule develop4
(declare (salience 5000))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 opinion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAyama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  develop.clp 	develop4   "  ?id "  kAyama_kara )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University)  on 12-03-2014
;The equations developed in this chapter for motion in a plane can be easily extended to the case of three dimensions.  ;ncert
;हम इस अध्याय में प्राप्त समीकरणों को आसानी से त्रिविमीय गति के लिए विस्तारित किया जा सकता है . .... transformed translation
;हम इस अध्याय में जिन समीकरणों को प्राप्त करेङ्गे उन्हें आसानी से त्रिविमीय गति के लिए विस्तारित किया जा सकता है . ....   ;original translation
(defrule develop5
(declare (salience 5000))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  develop.clp 	develop5   "  ?id "  prApwa )" crlf)
)
)
;---------------------default rules----------------------------------
;"developed","Adj","1.vikasiwa"
;The USA is a developed country.
;
;
(defrule develop6
(declare (salience 4000))
(id-root ?id develop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikAsa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  develop.clp 	develop6   "  ?id "  vikAsa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  develop.clp   develop6   "  ?id " kA )" crlf)
)
)

;default_sense && category=verb	vikasiwa_kara	0
;"develop","VT","1.vikasiwa_karanA"
;Her company developed a new kind of building material that withstands all kinds of weather.
;
;


