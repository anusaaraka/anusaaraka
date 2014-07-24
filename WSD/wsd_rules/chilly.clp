;$$$  Modified by Preeti(13-5-14)
;It is a little chilly outside. [merriam-webster.com]
;bAhara WodZA TaMdA  hE.
(defrule chilly0
;(declare (salience 5000));salience changed
(id-root ?id chilly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaMdA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chilly.clp 	chilly0   "  ?id "  TaMdA )" crlf))
)

;$$$  Modified by Preeti(13-5-14)
;They gave him a chilly reception. [merriam-webster.com]
;unhoMne usako eka rUKA svAgawa xiyA.[AO]
;unhoMne usakA rUKA svAgawa kiyA.
(defrule chilly1
(declare (salience 1000));salience changed
(id-root ?id chilly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 look|reception)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUKA));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chilly.clp 	chilly1   "  ?id "  rUKA )" crlf))
)

;"chilly","Adj","1.TaNdA"
;I'm very lazy in this chilly weather. 
;--"2.uwsAha_hIna"
;She is rather chilly to her guests.
;
;
