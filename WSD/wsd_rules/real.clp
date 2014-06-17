

;"real","Adj","1.sawya"
;Are these facts real? 
;--"2.vAswavika"
;He is the real manager of the institution.
;--"3.pUrNawaH"
;The excursion trip was a real disaster 
;--"4.AmaxanI/sampawwi"
;
;@@@ Added by Anita --20.2.2014
;A lot of these chemicals pose very real threats to our health. [By mail]
;बहुत सारे ये रसायनिक द्रव्य हमारे स्वास्थ्य के लिए वास्तविक खतरे उत्पन्न करते हैं ।
(defrule real2
(declare (salience 5300))
(id-root ?id real)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 threat)
(kriyA-object  ? ?id1)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswavika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  real.clp 	real2   "  ?id "  vAswavika )" crlf))
)

;@@@ Added by Anita--20.2.2014
;The excursion trip was a real disaster. --[old clp sentence] [using 6 no. parser]
;भ्रमण यात्रा पूर्णतः तबाही थी । 
(defrule real3
(declare (salience 5150))
(id-root ?id real)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNawaH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  real.clp 	real3   "  ?id "  pUrNawaH )" crlf))
)
;@@@ Added by Anita--28.2.2014
;She is a real class performer. [Gyan-Nidhi]
;वह विशिष्ट श्रेणी की  कलाकार है । 
(defrule real4
(declare (salience 5250))
(id-root ?id real)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  real.clp 	real4   "  ?id "  viSiRta )" crlf))
)
;@@@ Added by Anita--11.3.2014
;The Commission recommended the creation of a real teaching University in Calcutta. [gyanidhi ;sentence]
;आयोग ने कलकत्ता में एक असली अध्यापन विश्वविद्यालय बनाने की सलाह दी।
(defrule real5
(declare (salience 5400))
(id-root ?id real)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 university|college|school)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  real.clp 	real5   "  ?id "  asalI )" crlf))
)



;Are these facts real?
;hEM ye waWya asalI?
;He is the real manager of the institution.
;vaha hE asalI/vAswava_meM prabaMXaka saMsWA_kA
;The excursion trip was a real disaster.
;paryatana yAwrA WI vAswava_meM Gora_vipawwi
;He had a real good laugh after a long time.
;eka laMbe kAla ke bAxa usake WI asalI acCI hazsI.
;
;
;sUtra: asalI^vAswava_meM

;####################################default-rule################################
;Are these facts real?       [old clp. sentence]
;क्या ये तथ्य सत्य हैं ?
(defrule real0
(id-root ?id real)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  real.clp 	real0   "  ?id "  sawya )" crlf))
)

;"real","Adv","1.yaWArWa_meM"
;He had a real good laugh after a long time.
;
(defrule real1
(id-root ?id real)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaWArWa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  real.clp 	real1   "  ?id "  yaWArWa_meM )" crlf))
)

