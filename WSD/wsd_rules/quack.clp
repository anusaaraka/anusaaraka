;$$$ Modified by Krithika (23/Oct/2013)
;Changed the meaning as per Anita ji's advice from "bawaKa_kI_bolI_bola" to "kvAM_kvAM_kara"
;The ducks quacked noisily as they swam across the pond.
;The ducks started quacking loudly when we threw them some bread.
(defrule quack_verb_default
(id-root ?id quack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kvAM_kvAM_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " quack.clp quack_verb_default " ?id " kvAM_kvAM_kara )" crlf))
)
;____________________________________________________________________
;$$$ Modified by Krithika (23/Oct/2013) -- added cat course adjective.
;Have you seen a quack about that cough? - NOUN
;कया आपने खाँसी के ििए िकसी नीम-हकीम से सिाह िी ?
;He is a quack psychologist who complicates everyone's problems. - ADJECTIVE
;वह एक नीम-हकीम मनोरोग िवशेषतज है जो सभी की समसयाओं को और भी जििि बना देता है ।
;I went everywhere for treatment, tried all sorts of quacks.
;in the above sentence, quack is taken as a PropN by the parser, whereas its a noun.
(defrule quack_noun_or_adjective_default
(id-root ?id quack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun|adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIma_hakIma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " quack.clp quack_noun_or_adjective_default " ?id " nIma_hakIma )" crlf))
)

