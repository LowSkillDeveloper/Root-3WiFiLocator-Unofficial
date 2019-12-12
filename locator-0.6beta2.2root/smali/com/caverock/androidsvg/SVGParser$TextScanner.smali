.class public Lcom/caverock/androidsvg/SVGParser$TextScanner;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TextScanner"
.end annotation


# instance fields
.field protected input:Ljava/lang/String;

.field protected position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2193
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2190
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2195
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    .line 2196
    return-void
.end method

.method private scanForFloat()I
    .locals 6

    .prologue
    .line 2433
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2434
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v0, v4

    .line 2475
    :goto_0
    return v0

    .line 2435
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v1, v4

    .line 2436
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v2, v4

    .line 2438
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 2440
    move v4, v3

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1

    move v4, v3

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_2

    .line 2441
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    .line 2442
    :cond_2
    move v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2443
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2444
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    .line 2445
    :goto_1
    move v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2451
    :cond_3
    move v4, v3

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_4

    .line 2452
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2453
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    .line 2454
    :goto_2
    move v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2460
    :cond_4
    move v4, v3

    const/16 v5, 0x65

    if-eq v4, v5, :cond_5

    move v4, v3

    const/16 v5, 0x45

    if-ne v4, v5, :cond_8

    .line 2461
    :cond_5
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    .line 2462
    move v4, v3

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_6

    move v4, v3

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_7

    .line 2463
    :cond_6
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    .line 2464
    :cond_7
    move v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2465
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2466
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    .line 2467
    :goto_3
    move v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2474
    :cond_8
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2475
    move v4, v1

    move v0, v4

    goto/16 :goto_0

    .line 2446
    :cond_9
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2447
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    goto :goto_1

    .line 2455
    :cond_a
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2456
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    goto :goto_2

    .line 2468
    :cond_b
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2469
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    goto :goto_3
.end method

.method private scanForInteger()I
    .locals 6

    .prologue
    .line 2485
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2486
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v0, v4

    .line 2504
    :goto_0
    return v0

    .line 2487
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v1, v4

    .line 2488
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v2, v4

    .line 2490
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v3, v4

    .line 2492
    move v4, v3

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1

    move v4, v3

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_2

    .line 2493
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    .line 2494
    :cond_2
    move v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2495
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2496
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    .line 2497
    :goto_1
    move v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2503
    :cond_3
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2504
    move v4, v1

    move v0, v4

    goto :goto_0

    .line 2498
    :cond_4
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2499
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method protected advanceChar()I
    .locals 5

    .prologue
    .line 2358
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2359
    const/4 v1, -0x1

    move v0, v1

    .line 2364
    :goto_0
    return v0

    .line 2360
    :cond_0
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2361
    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2362
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    goto :goto_0

    .line 2364
    :cond_1
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public ahead()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2512
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v1, v3

    .line 2513
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2515
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2516
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2517
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 2514
    :cond_1
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0
.end method

.method public checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 2330
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 2331
    const/4 v2, 0x0

    move-object v0, v2

    .line 2334
    :goto_0
    return-object v0

    .line 2333
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v2

    .line 2334
    move-object v2, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public checkedNextFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3

    .prologue
    .line 2273
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    .line 2274
    const/4 v2, 0x0

    move-object v0, v2

    .line 2277
    :goto_0
    return-object v0

    .line 2276
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v2

    .line 2277
    move-object v2, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public consume(C)Z
    .locals 7

    .prologue
    .line 2339
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v4, v1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 2340
    move v3, v2

    if-eqz v3, :cond_0

    .line 2341
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2342
    :cond_0
    move v3, v2

    move v0, v3

    return v0

    .line 2339
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public consume(Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 2348
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v4

    .line 2349
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v5, v0

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v6, v0

    iget v6, v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v7, v2

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 2350
    move v4, v3

    if-eqz v4, :cond_0

    .line 2351
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v6, v2

    add-int/2addr v5, v6

    iput v5, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2352
    :cond_0
    move v4, v3

    move v0, v4

    return v0

    .line 2349
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public empty()Z
    .locals 3

    .prologue
    .line 2203
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public hasLetter()Z
    .locals 4

    .prologue
    .line 2545
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2546
    const/4 v2, 0x0

    move v0, v2

    .line 2548
    :goto_0
    return v0

    .line 2547
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v1, v2

    .line 2548
    move v2, v1

    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    move v2, v1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_3

    :cond_1
    move v2, v1

    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    move v2, v1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_3

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method protected isEOL(I)Z
    .locals 4

    .prologue
    .line 2222
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method protected isWhitespace(I)Z
    .locals 4

    .prologue
    .line 2208
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    move v2, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public nextChar()Ljava/lang/Integer;
    .locals 8

    .prologue
    .line 2293
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2294
    const/4 v1, 0x0

    move-object v0, v1

    .line 2295
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public nextFlag()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 2315
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2316
    const/4 v2, 0x0

    move-object v0, v2

    .line 2322
    :goto_0
    return-object v0

    .line 2317
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v1, v2

    .line 2318
    move v2, v1

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    move v2, v1

    const/16 v3, 0x31

    if-ne v2, v3, :cond_3

    .line 2319
    :cond_1
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2320
    move v2, v1

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 2322
    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public nextFloat()Ljava/lang/Float;
    .locals 6

    .prologue
    .line 2242
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->scanForFloat()I

    move-result v3

    move v1, v3

    .line 2243
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-ne v3, v4, :cond_0

    .line 2244
    const/4 v3, 0x0

    move-object v0, v3

    .line 2247
    :goto_0
    return-object v0

    .line 2245
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v2, v3

    .line 2246
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2247
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public nextFunction()Ljava/lang/String;
    .locals 8

    .prologue
    .line 2408
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2409
    const/4 v4, 0x0

    move-object v0, v4

    .line 2423
    :goto_0
    return-object v0

    .line 2410
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v1, v4

    .line 2412
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 2413
    :goto_1
    move v4, v2

    const/16 v5, 0x61

    if-lt v4, v5, :cond_1

    move v4, v2

    const/16 v5, 0x7a

    if-le v4, v5, :cond_3

    :cond_1
    move v4, v2

    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    move v4, v2

    const/16 v5, 0x5a

    if-le v4, v5, :cond_3

    .line 2415
    :cond_2
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v3, v4

    .line 2416
    :goto_2
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2418
    move v4, v2

    const/16 v5, 0x28

    if-ne v4, v5, :cond_5

    .line 2419
    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2420
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 2414
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v2, v4

    goto :goto_1

    .line 2417
    :cond_4
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v2, v4

    goto :goto_2

    .line 2422
    :cond_5
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2423
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public nextInteger()Ljava/lang/Integer;
    .locals 6

    .prologue
    .line 2282
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->scanForInteger()I

    move-result v3

    move v1, v3

    .line 2284
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-ne v3, v4, :cond_0

    .line 2285
    const/4 v3, 0x0

    move-object v0, v3

    .line 2288
    :goto_0
    return-object v0

    .line 2286
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, v3

    .line 2287
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2288
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public nextLength()Lcom/caverock/androidsvg/SVG$Length;
    .locals 8

    .prologue
    .line 2300
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    move-object v1, v3

    .line 2301
    move-object v3, v1

    if-nez v3, :cond_0

    .line 2302
    const/4 v3, 0x0

    move-object v0, v3

    .line 2307
    :goto_0
    return-object v0

    .line 2303
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v3

    move-object v2, v3

    .line 2304
    move-object v3, v2

    if-nez v3, :cond_1

    .line 2305
    new-instance v3, Lcom/caverock/androidsvg/SVG$Length;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sget-object v6, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    move-object v0, v3

    goto :goto_0

    .line 2307
    :cond_1
    new-instance v3, Lcom/caverock/androidsvg/SVG$Length;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public nextQuotedString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 2556
    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2557
    const/4 v4, 0x0

    move-object v0, v4

    .line 2571
    :goto_0
    return-object v0

    .line 2558
    :cond_0
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v1, v4

    .line 2559
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 2560
    move v4, v2

    move v3, v4

    .line 2561
    move v4, v2

    const/16 v5, 0x27

    if-eq v4, v5, :cond_1

    move v4, v2

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    .line 2562
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 2563
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v2, v4

    .line 2564
    :goto_1
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_3

    .line 2566
    :cond_2
    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 2567
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2568
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 2565
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v2, v4

    goto :goto_1

    .line 2570
    :cond_4
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2571
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2376
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public nextToken(C)Ljava/lang/String;
    .locals 7

    .prologue
    .line 2386
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2387
    const/4 v4, 0x0

    move-object v0, v4

    .line 2398
    :goto_0
    return-object v0

    .line 2389
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v2, v4

    .line 2390
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    move v5, v1

    if-ne v4, v5, :cond_2

    .line 2391
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    .line 2393
    :cond_2
    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v3, v4

    .line 2394
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v2, v4

    .line 2395
    :goto_1
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    move v4, v2

    move v5, v1

    if-eq v4, v5, :cond_3

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2398
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 2396
    :cond_4
    move-object v4, v0

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v4

    move v2, v4

    goto :goto_1
.end method

.method public nextUnit()Lcom/caverock/androidsvg/SVG$Unit;
    .locals 8

    .prologue
    .line 2522
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2523
    const/4 v3, 0x0

    move-object v0, v3

    .line 2536
    :goto_0
    return-object v0

    .line 2524
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    .line 2525
    move v3, v1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_1

    .line 2526
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2527
    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    move-object v0, v3

    goto :goto_0

    .line 2529
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    if-le v3, v4, :cond_2

    .line 2530
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 2532
    :cond_2
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v4, v0

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v5, v0

    iget v5, v5, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v3

    move-object v2, v3

    .line 2533
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2534
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 2535
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 2536
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public possibleNextFloat()Ljava/lang/Float;
    .locals 5

    .prologue
    .line 2257
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v1, v3

    .line 2258
    move-object v3, v0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    move-result v3

    .line 2259
    move-object v3, v0

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v3

    move-object v2, v3

    .line 2260
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2261
    move-object v3, v2

    move-object v0, v3

    .line 2263
    :goto_0
    return-object v0

    .line 2262
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2263
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public restOfText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2579
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2580
    const/4 v2, 0x0

    move-object v0, v2

    .line 2584
    :goto_0
    return-object v0

    .line 2582
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move v1, v2

    .line 2583
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2584
    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public skipCommaWhitespace()Z
    .locals 5

    .prologue
    .line 2229
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2230
    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2231
    const/4 v1, 0x0

    move v0, v1

    .line 2236
    :goto_0
    return v0

    .line 2232
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_1

    .line 2233
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 2234
    :cond_1
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2235
    move-object v1, v0

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2236
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0
.end method

.method public skipWhitespace()V
    .locals 5

    .prologue
    .line 2213
    move-object v0, p0

    :goto_0
    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 2218
    :goto_1
    return-void

    .line 2214
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2215
    goto :goto_1

    .line 2216
    :cond_1
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0
.end method
