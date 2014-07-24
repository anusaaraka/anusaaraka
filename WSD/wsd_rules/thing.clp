;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;##############################################################################
;@@@ Added by Prachi Rathore[29-1-14]
;She says awful things when she's in a temper. [oald]
;वह अज़ीब सी बातें कहती है जब वह क्रोध में होती है . 
;That's a terrible thing to say![oald]
;वह कहने के लिये एक खराब बात है! 
(defrule thing0
(declare (salience 5500))
(id-root ?id thing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-object  ?id1 ?id)(saMjFA-to_kqxanwa  ?id ?id1))
(id-root ?id1 say)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thing.clp 	thing0   "  ?id "  bAwa )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[29-1-14]
;
(defrule thing2
(declare (salience 4000))
(id-root ?id thing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIjaZ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thing.clp 	thing2   "  ?id "  cIjaZ )" crlf))
)
