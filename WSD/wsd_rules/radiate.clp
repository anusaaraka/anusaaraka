;##############################################################################
;#  Copyright (C) 2002-2005 Shweta Vikram (shwetavikram.2009@rediffmail.com)
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
;@@@ Added by SHWETA VIKRAM(20/08/2013)
;In communication using radio waves, an antenna at the transmitter radiates the Electromagnetic waves (em waves), which travel through the space and reach the receiving antenna at the other end.
;रेडिओ लहरों का उपयोग करते हुए सूचना में, प्रेषक पर एक ऐण्टिना वह विद्युत चुम्बकीय लहरें (em लहरें), विकरित करता है जो जगह में से यात्रा करती हैं और इसके विपरीत पाना ऐण्टिना तक पहुँचती हैं . (Anusaaraka)
(defrule radiate0
(declare (salience 5000))
(id-root ?id radiate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikariwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  radiate.clp 	radiate0   "  ?id "  vikariwa_kara )" crlf))
)



;@@@ Added by SHWETA VIKRAM(20/08/2013)
;Five roads radiate from the square.
;पाँच सड़कें चौक से निकलती हैं . (Anusaaraka)
;A single beam of light radiated from the lighthouse. [cambridge dictionary] sentence added by Anita-25.3.2014
;प्रकाश की एक किरण प्रकाश-स्तम्भ से निकली ।
(defrule radiate1
(declare (salience 4900))
(id-root ?id radiate)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 square|lighthouse)
(kriyA-from_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  radiate.clp 	radiate1   "  ?id "  nikala )" crlf))
)



;@@@ Added by SHWETA VIKRAM(20/08/2013)DEFAULT
;The pain started in my stomach and radiated all over my body.
;दर्द मेरे पेट में शुरु हुआ और मेरे शरीर में पूरे फैलाया . (Anusaaraka)
(defrule radiate2
(declare (salience 0))
(id-root ?id radiate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  radiate.clp 	radiate2   "  ?id "  PElA )" crlf))
)

;+++ Re-modified by Sukhada (2/4/14)
;@@@ Added by Anita-25.3.2014
;The planet Jupiter radiates twice as much heat from inside as it receives from the Sun. [cambridge dictionary]
;गृह बृहस्पति सूर्य से प्राप्त ऊष्मा को अंदर से दो गुनी करके निकालती है ।
;The planet Jupiter radiates heat from inside.
;graha bqhaspawi anxara se URmA nikAlawA hE.
(defrule radiate3
(declare (salience 4800))
(id-root ?id radiate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj) ;added by Sukhada 2/4/14
(id-root ?obj heat) ;added by Sukhada 2/4/14
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  radiate.clp 	radiate3   "  ?id "  nikAla )" crlf))
)

