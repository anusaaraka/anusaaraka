
(defrule gloomy0
(declare (salience 5000))
(id-root ?id gloomy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gloomy.clp 	gloomy0   "  ?id "  uxAsa )" crlf))
)

(defrule gloomy1
(declare (salience 4900))
(id-root ?id gloomy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gloomy.clp 	gloomy1   "  ?id "  aMXerA )" crlf))
)

;"gloomy","Adj","1.aMXerA"
;The day was gloomy due to cloudy weather.
;--"2.nirASajanaka"
;The future of this industry looks gloomy.
;
;
