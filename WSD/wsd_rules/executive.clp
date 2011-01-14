
(defrule executive0
(declare (salience 5000))
(id-root ?id executive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prabaMXakAriNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  executive.clp 	executive0   "  ?id "  prabaMXakAriNI )" crlf))
)

;"executive","Adj","1.prabaMXakAriNI"
;He holds an executive post in the company.                                     
;
(defrule executive1
(declare (salience 4900))
(id-root ?id executive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSAsaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  executive.clp 	executive1   "  ?id "  praSAsaka )" crlf))
)

;"executive","N","1.praSAsaka"
;He is an excutive in the company.
;
;LEVEL 
;Headword : executive
;
;Examples --
;"executive","Adj","1.kAryakAraka"
;He is a man of considerable executive ability.
;vaha eka kAPI kAryakAraka yogyawA kA AxamI hE. <--kArya ko karane kI yogyawA
;--"2.kAryavAhaka"
;She has executive authority to take all decisions.
;usake pAsa saBI nirNaya lene ke kAryavAhaka aXikAra hEM. <-- kArya ko usake aMjAma waka vahana karane vAlA <--kAryakAraka
;--"3.kAryakAriNI"
;The executive committe have yet to take a decision about his expulsion.
;kAryakAriNI samiwi ko usakI barKZAswagI kA nirNaya aBI lenA bAkI hE. <--kArya ko aMjAma xene vAlI samiwi
;
;"executive","N","1.vyavasWApaka"
;She is the chief executive of a multinational company.
;vaha eka bahurARtrIya kampanI kI pramuKa vyavasWApaka hE.<--vyavasWA samabanXI kArya karane vAlA 
;
;saBI uxAharaNoM se bIjArWa 'kAryakAraka' uBara kara AwA hE. awaH isakA sUwra banegA -
;
;sUwra : kAryakAraka
;
