.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSTextScanner"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 339
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string v4, "(?s)/\\*.*?\\*/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private nextAttribValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 513
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    const/4 v2, 0x0

    move-object v0, v2

    .line 519
    :goto_0
    return-object v0

    .line 516
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 517
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 518
    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    .line 519
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private scanForIdentifier()I
    .locals 6

    .prologue
    .line 357
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    move v0, v4

    .line 376
    :goto_0
    return v0

    .line 359
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    move v1, v4

    .line 360
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    move v2, v4

    .line 362
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 363
    move v4, v3

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    .line 364
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    .line 366
    :cond_1
    move v4, v3

    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    move v4, v3

    const/16 v5, 0x5a

    if-le v4, v5, :cond_4

    :cond_2
    move v4, v3

    const/16 v5, 0x61

    if-lt v4, v5, :cond_3

    move v4, v3

    const/16 v5, 0x7a

    if-le v4, v5, :cond_4

    :cond_3
    move v4, v3

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_8

    .line 368
    :cond_4
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    .line 370
    :goto_1
    move v4, v3

    const/16 v5, 0x41

    if-lt v4, v5, :cond_5

    move v4, v3

    const/16 v5, 0x5a

    if-le v4, v5, :cond_9

    :cond_5
    move v4, v3

    const/16 v5, 0x61

    if-lt v4, v5, :cond_6

    move v4, v3

    const/16 v5, 0x7a

    if-le v4, v5, :cond_9

    :cond_6
    move v4, v3

    const/16 v5, 0x30

    if-lt v4, v5, :cond_7

    move v4, v3

    const/16 v5, 0x39

    if-le v4, v5, :cond_9

    :cond_7
    move v4, v3

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_9

    move v4, v3

    const/16 v5, 0x5f

    if-eq v4, v5, :cond_9

    .line 373
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    move v2, v4

    .line 375
    :cond_8
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 376
    move v4, v2

    move v0, v4

    goto :goto_0

    .line 371
    :cond_9
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public nextIdentifier()Ljava/lang/String;
    .locals 6

    .prologue
    .line 347
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v3

    move v1, v3

    .line 348
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-ne v3, v4, :cond_0

    .line 349
    const/4 v3, 0x0

    move-object v0, v3

    .line 352
    :goto_0
    return-object v0

    .line 350
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    move v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 351
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 352
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public nextPropertyValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 527
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 528
    const/4 v4, 0x0

    move-object v0, v4

    .line 541
    :goto_0
    return-object v0

    .line 529
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    move v1, v4

    .line 530
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    move v2, v4

    .line 532
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 533
    :goto_1
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v4, v3

    const/16 v5, 0x3b

    if-eq v4, v5, :cond_1

    move v4, v3

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_1

    move v4, v3

    const/16 v5, 0x21

    if-eq v4, v5, :cond_1

    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isEOL(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 538
    :cond_1
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    move v5, v1

    if-le v4, v5, :cond_4

    .line 539
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 534
    :cond_2
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 535
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 536
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    goto :goto_1

    .line 540
    :cond_4
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 541
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 387
    const/4 v8, 0x0

    move v0, v8

    .line 505
    :goto_0
    return v0

    .line 389
    :cond_0
    move-object v8, v0

    iget v8, v8, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    move v2, v8

    .line 390
    const/4 v8, 0x0

    move-object v3, v8

    .line 391
    const/4 v8, 0x0

    move-object v4, v8

    .line 393
    move-object v8, v1

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 395
    move-object v8, v0

    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 396
    sget-object v8, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    move-object v3, v8

    .line 397
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 404
    :cond_1
    :goto_1
    move-object v8, v0

    const/16 v9, 0x2a

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 405
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v4, v8

    .line 414
    :cond_2
    :goto_2
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 497
    :cond_3
    :goto_3
    move-object v8, v4

    if-eqz v8, :cond_18

    .line 499
    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$Selector;->add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    .line 500
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 398
    :cond_4
    move-object v8, v0

    const/16 v9, 0x2b

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 399
    sget-object v8, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    move-object v3, v8

    .line 400
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_1

    .line 407
    :cond_5
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 408
    move-object v8, v5

    if-eqz v8, :cond_2

    .line 409
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v4, v8

    .line 410
    move-object v8, v1

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedElement()V

    .line 414
    goto :goto_2

    .line 416
    :cond_6
    move-object v8, v0

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 419
    move-object v8, v4

    if-nez v8, :cond_7

    .line 420
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v4, v8

    .line 421
    :cond_7
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 422
    move-object v8, v5

    if-nez v8, :cond_8

    .line 423
    new-instance v8, Lorg/xml/sax/SAXException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Invalid \".class\" selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 424
    :cond_8
    move-object v8, v4

    const-string v9, "class"

    sget-object v10, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v11, v5

    invoke-virtual {v8, v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 425
    move-object v8, v1

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 426
    goto :goto_2

    .line 429
    :cond_9
    move-object v8, v0

    const/16 v9, 0x23

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 432
    move-object v8, v4

    if-nez v8, :cond_a

    .line 433
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v4, v8

    .line 434
    :cond_a
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 435
    move-object v8, v5

    if-nez v8, :cond_b

    .line 436
    new-instance v8, Lorg/xml/sax/SAXException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Invalid \"#id\" selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 437
    :cond_b
    move-object v8, v4

    const-string v9, "id"

    sget-object v10, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v11, v5

    invoke-virtual {v8, v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 438
    move-object v8, v1

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    .line 441
    :cond_c
    move-object v8, v4

    if-nez v8, :cond_d

    .line 442
    goto/16 :goto_3

    .line 445
    :cond_d
    move-object v8, v0

    const/16 v9, 0x5b

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 447
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 448
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 449
    const/4 v8, 0x0

    move-object v6, v8

    .line 450
    move-object v8, v5

    if-nez v8, :cond_e

    .line 451
    new-instance v8, Lorg/xml/sax/SAXException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 452
    :cond_e
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 453
    const/4 v8, 0x0

    move-object v7, v8

    .line 454
    move-object v8, v0

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 455
    sget-object v8, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v7, v8

    .line 460
    :cond_f
    :goto_4
    move-object v8, v7

    if-eqz v8, :cond_13

    .line 461
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 462
    move-object v8, v0

    invoke-direct {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 463
    move-object v8, v6

    if-nez v8, :cond_12

    .line 464
    new-instance v8, Lorg/xml/sax/SAXException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 456
    :cond_10
    move-object v8, v0

    const-string v9, "~="

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 457
    sget-object v8, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v7, v8

    goto :goto_4

    .line 458
    :cond_11
    move-object v8, v0

    const-string v9, "|="

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 459
    sget-object v8, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    move-object v7, v8

    goto :goto_4

    .line 465
    :cond_12
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 467
    :cond_13
    move-object v8, v0

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-nez v8, :cond_14

    .line 468
    new-instance v8, Lorg/xml/sax/SAXException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 469
    :cond_14
    move-object v8, v4

    move-object v9, v5

    move-object v10, v7

    if-nez v10, :cond_15

    sget-object v10, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    :goto_5
    move-object v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 470
    move-object v8, v1

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 471
    goto/16 :goto_2

    .line 469
    :cond_15
    move-object v10, v7

    goto :goto_5

    .line 474
    :cond_16
    move-object v8, v0

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 477
    move-object v8, v0

    iget v8, v8, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    move v5, v8

    .line 478
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 479
    move-object v8, v0

    const/16 v9, 0x28

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 480
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 481
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 482
    move-object v8, v0

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 483
    move-object v8, v0

    const/16 v9, 0x29

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-nez v8, :cond_17

    .line 484
    move-object v8, v0

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 485
    goto/16 :goto_3

    .line 489
    :cond_17
    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addPseudo(Ljava/lang/String;)V

    .line 490
    move-object v8, v1

    invoke-virtual {v8}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 494
    goto/16 :goto_3

    .line 504
    :cond_18
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 505
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0
.end method
