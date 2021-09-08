<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml" >
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Morfologia PP16-17</title>
                <meta charset="UTF-8" />
                <link rel="stylesheet" href="style.css" />
                <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700" rel="stylesheet" />
            </head>

            <body>
                <header>
                    <h1 id="titolo">
                        <xsl:value-of select="//tei:title"></xsl:value-of>
                    </h1>
                    <h2 id="respCod">
                        <xsl:apply-templates select="//tei:respStmt" />
                    </h2>
                </header>

                <main>
                    <section id="info">
                        <article>
                            <h2>Informazioni sugli appunti scritti da <xsl:value-of select="//tei:author" /></h2>
                            <br />
                            <xsl:apply-templates select="//tei:msIdentifier" />
                            <xsl:apply-templates select="//tei:msContents" />
                            <xsl:apply-templates select="//tei:supportDesc" />
                            <xsl:apply-templates select="//tei:handDesc" />
                            <xsl:apply-templates select="//tei:editionStmt" />
                            
                        </article>
                    </section>

                    <section id="range">
                        <article>
                            <h2>Porzione codificata</h2>
                            <br />
                            <p>
                                <b>Pagine: </b>
                                <xsl:value-of select="//tei:citedRange" />
                            </p>
                        </article>
                    </section>

                    <section class="pagina" id="pag16">
                        <figure>
                            <img src="ms_fr_03951_07_p016.jpg" />
                        </figure>
                        <h2 id="pag16">Pagina 16</h2>                                                   
                        <xsl:apply-templates select="//tei:body/tei:div[@n='p016']" />                        
                    </section>

                    <section class="note">
                        <h2>Note e Abbreviazioni</h2>
                        <article class="abbr">
                            <p>
                                <ol>
                                    <xsl:for-each select="//tei:body/tei:div[@n='p016']//tei:abbr">
                                        <li>
                                            <xsl:apply-templates />
                                        </li>            
                                    </xsl:for-each>                                
                                </ol>
                            </p>
                        </article>

                        <article class="expan">
                            <p>
                                <ol>
                                    <xsl:for-each select="//tei:body/tei:div[@n='p016']//tei:expan">
                                        <li>
                                            <xsl:apply-templates />
                                        </li>            
                                    </xsl:for-each>                                
                                </ol>
                            </p>
                        </article>
                    </section>

                    <section class="pagina" id="pag17">
                        <figure>
                            <img src="ms_fr_03951_07_p017.jpg" />
                        </figure>
                        <h2 id="pag17">Pagina 17</h2>   
                        <xsl:apply-templates select="//tei:body/tei:div[@n='p017']" />
                    </section>

                    <section class="note">
                        <h2>Note e Abbreviazioni</h2>
                        <article class="abbr">
                            <p>
                                <ol>
                                    <xsl:for-each select="//tei:body/tei:div[@n='p017']//tei:abbr">
                                        <li>
                                            <xsl:apply-templates />                                        
                                        </li>            
                                    </xsl:for-each>                                
                                </ol>
                            </p>
                        </article>

                        <article class="expan">
                            <p>
                                <ol>
                                    <xsl:for-each select="//tei:body/tei:div[@n='p017']//tei:expan">
                                        <li>
                                            <xsl:apply-templates />                                        
                                        </li>            
                                    </xsl:for-each>                                
                                </ol>
                            </p>
                        </article>
                    </section>

                </main>
            </body>
        </html>
    </xsl:template>



    <xsl:template match="tei:respStmt">
        <xsl:value-of select="//tei:resp" />
        <xsl:value-of select="//tei:name[@xml:id='FL']" />
    </xsl:template>

    <xsl:template match="tei:msIdentifier">
        <p>
            <b>Luogo di conservazione: </b>
            <xsl:value-of select="//tei:country" />,
            <xsl:value-of select="//tei:settlement" />,
            <xsl:value-of select="//tei:repository" />.
        </p>
        <br />
    </xsl:template>

    <xsl:template match="tei:msContents">
        <p>
            <b>Linguaggio: </b> 
            <xsl:value-of select="//tei:msItem/tei:textLang" />.
        </p>  
        <br />  
        <p>
            <b>Note: </b> 
            <xsl:value-of select="//tei:msItem/tei:note" />
        </p>
        <br />
    </xsl:template>

    <xsl:template match="tei:supportDesc">
        <p>
            <b>Materiale: </b>
            <xsl:value-of select="//tei:support" />
        </p>
        <br />
        <p>
            <b>Condizioni: </b>
            <xsl:value-of select="//tei:condition" />
        </p>
        <br />
    </xsl:template>

    <xsl:template match="tei:handDesc">
        <p>
            <b>Stesura: </b>
            <xsl:value-of select="//tei:handNote" />
        </p>
        <br />
    </xsl:template>

    <xsl:template match="tei:editionStmt">
        <p>
            <b>Data pubblicazione: </b>
            <xsl:value-of select="//tei:edition" />
        </p>
    </xsl:template>

    <xsl:template match="tei:div[@n='p016']">
        <article class="trascrizione"> 
            <h3>Testo francese</h3>
            <br />  
            <xsl:for-each select="//tei:div[@n='p016']//tei:p//tei:s[@type='transcription']">
                    <p class="trascrizione">
                        <xsl:apply-templates/>
                        <br />
                        <br />
                    </p>
            </xsl:for-each>
        </article>
        <article class="traduzione">
            <h3>Testo italiano</h3>
            <br />
            <xsl:for-each select="//tei:div[@n='p016']//tei:p//tei:s[@type='translation']">
                    <p>
                        <xsl:apply-templates/>
                        <br />
                        <br />
                    </p>
            </xsl:for-each>
        </article>
    </xsl:template>

    <xsl:template match="tei:div[@n='p017']">
        <article class="trascrizione">
            <h3>Testo francese</h3>
            <br />
            <xsl:for-each select="//tei:div[@n='p017']//tei:p//tei:s[@type='transcription']">
                    <p>
                        <xsl:apply-templates />                                                   
                        <br />
                        <br />
                    </p>
            </xsl:for-each>
        </article>
        <article class="traduzione">
            <h3>Testo italiano</h3>
            <br />
            <xsl:for-each select="//tei:div[@n='p017']//tei:p//tei:s[@type='translation']">
                    <p>
                        <xsl:apply-templates/>
                        <br />
                        <br />
                    </p>
            </xsl:for-each>
        </article>
    </xsl:template>

    <xsl:template match="tei:p//tei:expan">
        <xsl:value-of select="tei:abbr" />
    </xsl:template>

    <xsl:template match="tei:emph[@rend='underlined']">
        <u><xsl:apply-templates /></u>
    </xsl:template>

    <xsl:template match="tei:emph[@rend='red']">
        <span style="color:red;"><xsl:apply-templates /></span>
    </xsl:template>

</xsl:stylesheet>