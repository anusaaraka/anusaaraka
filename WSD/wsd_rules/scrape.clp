;########################################################################
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
;########################################################################
;@@@ Added by jagriti(15.2.2014)
;To scrape a pit for water.[rajpal]
;पानी के लिये गड्ढा खोदना . 
(defrule scrape0
(declare (salience 5000))
(id-root ?id scrape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 pit|well)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrape.clp 	scrape0   "  ?id "  Koxa )" crlf))
)
;@@@ Added by jagriti(15.2.2014)
;To scrape dirt off one's boot.[rajpal]
;अपने बूटों की धूल साफ करना . 
(defrule scrape1
(declare (salience 5000))
(id-root ?id scrape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 dirt)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAPa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrape.clp 	scrape1   "  ?id "  sAPa_kara )" crlf))
)
;...default rule....
;@@@ Added by jagriti(15.2.2014)
;They scraped off the paint from the gate.[rajpal]
(defrule scrape_verb
(declare (salience 100))
(id-root ?id scrape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KuMraca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrape.clp 	scrape_verb   "  ?id "  KuMraca )" crlf))
)
;@@@ Added by jagriti(15.2.2014)
;A scrape on the glass.[rajpal]
;काँच पर खरोंच . 
(defrule scrape_noun
(declare (salience 100))
(id-root ?id scrape)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaroMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrape.clp 	scrape_noun   "  ?id "  KaroMca )" crlf))
)
