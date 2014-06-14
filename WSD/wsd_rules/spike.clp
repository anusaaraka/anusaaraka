;#############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;######################################################################
;@@@ Added by jagriti(8.1.2014)
;He gave her a drink spiked with tranquillizers. [oald]
;उसने उसको पेय  शामक के साथ मिलाकर दिया .
(defrule spike0
(declare (salience 5000))
(id-root ?id spike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spike.clp 	spike0   "  ?id "  milA )" crlf))
)

;@@@ Added by jagriti(8.1.2014)
;The article was spiked for fear of legal action against the newspaper.[oald]
;लेख अखबार के खिलाफ कानूनी कार्रवाई के डर से रोक दिया गया था.
(defrule spike1
(declare (salience 4900))
(id-root ?id spike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 article|advertisement|movie)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spike.clp 	spike1   "  ?id "  roka_xe )" crlf))
)

;@@@ Added by jagriti(8.1.2014)
;The jobless rate in October spiked to a five-year high.[cald]  [confusion in translation]
(defrule spike2
(declare (salience 4800))
(id-root ?id spike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se_baDZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spike.clp 	spike2   "  ?id "  wejI_se_baDZa_jA )" crlf))
)

;....Default rule....
;@@@ Added by jagriti(8.1.2014)
;The cobbler spiked my shoes. 
;मोची ने मेरे जूते में कील जड दी.	
(defrule spike3
(declare (salience 1))
(id-root ?id spike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIla_jadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spike.clp 	spike3   "  ?id "  kIla_jadZa )" crlf))
)

;@@@ Added by jagriti(8.1.2014)
;Her hair stood up in spikes.[oald]
;उसके बाल धातु की कील में फँस गए.
(defrule spike4
(declare (salience 1))
(id-root ?id spike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XAwu_kI_kIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spike.clp 	spike4   "  ?id "  XAwu_kI_kIla )" crlf))
)
