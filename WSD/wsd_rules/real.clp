
(defrule real0
(declare (salience 5000))
(id-root ?id real)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  real.clp 	real0   "  ?id "  sawya )" crlf))
)

;"real","Adj","1.sawya"
;Are these facts real? 
;--"2.vAswavika"
;He is the real manager of the institution.
;--"3.pUrNawaH"
;The excursion trip was a real disaster 
;--"4.AmaxanI/sampawwi"
;
(defrule real1
(declare (salience 4900))
(id-root ?id real)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaWArWa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  real.clp 	real1   "  ?id "  yaWArWa_meM )" crlf))
)

;"real","Adv","1.yaWArWa_meM"
;He had a real good laugh after a long time.
;
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
