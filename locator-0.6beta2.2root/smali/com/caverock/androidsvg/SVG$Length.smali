.class public Lcom/caverock/androidsvg/SVG$Length;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Length"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit:[I


# instance fields
.field unit:Lcom/caverock/androidsvg/SVG$Unit;

.field value:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit()[I
    .locals 5

    .prologue
    .line 1213
    sget-object v1, Lcom/caverock/androidsvg/SVG$Length;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit:[I

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    if-eqz v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Unit;->values()[Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    move-object v0, v1

    move-object v1, v0

    :try_start_0
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->cm:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    :try_start_1
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    :try_start_2
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move-object v1, v0

    :try_start_3
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->in:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    move-object v1, v0

    :try_start_4
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->mm:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    move-object v1, v0

    :try_start_5
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pc:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v2

    const/16 v3, 0x8

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_6
    move-object v1, v0

    :try_start_6
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v2

    const/16 v3, 0x9

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    move-object v1, v0

    :try_start_7
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    move-object v1, v0

    :try_start_8
    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_9
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    sput-object v2, Lcom/caverock/androidsvg/SVG$Length;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit:[I

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_9
.end method

.method public constructor <init>(F)V
    .locals 4

    .prologue
    .line 1224
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1215
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1216
    move-object v2, v0

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 1226
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1227
    move-object v2, v0

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 1228
    return-void
.end method

.method public constructor <init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    .locals 5

    .prologue
    .line 1218
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1215
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1216
    move-object v3, v0

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 1220
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1221
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 1222
    return-void
.end method


# virtual methods
.method public floatValue()F
    .locals 2

    .prologue
    .line 1232
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v0, v1

    return v0
.end method

.method public floatValue(F)F
    .locals 4

    .prologue
    .line 1312
    move-object v0, p0

    move v1, p1

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Length;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit()[I

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1330
    :pswitch_0
    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v0, v2

    :goto_0
    return v0

    .line 1315
    :pswitch_1
    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v0, v2

    goto :goto_0

    .line 1317
    :pswitch_2
    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v3, v1

    mul-float/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 1319
    :pswitch_3
    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v3, v1

    mul-float/2addr v2, v3

    const v3, 0x40228f5c    # 2.54f

    div-float/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 1321
    :pswitch_4
    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v3, v1

    mul-float/2addr v2, v3

    const v3, 0x41cb3333    # 25.4f

    div-float/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 1323
    :pswitch_5
    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x42900000    # 72.0f

    div-float/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 1325
    :pswitch_6
    move-object v2, v0

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v3, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 1312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 10

    .prologue
    .line 1282
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v6, v7, :cond_2

    .line 1284
    move-object v6, v1

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v6

    move-object v2, v6

    .line 1285
    move-object v6, v2

    if-nez v6, :cond_0

    .line 1286
    move-object v6, v0

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v0, v6

    .line 1294
    :goto_0
    return v0

    .line 1287
    :cond_0
    move-object v6, v2

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move v3, v6

    .line 1288
    move-object v6, v2

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move v4, v6

    .line 1289
    move v6, v3

    move v7, v4

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 1290
    move-object v6, v0

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v7, v3

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 1291
    :cond_1
    move v6, v3

    move v7, v3

    mul-float/2addr v6, v7

    move v7, v4

    move v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v8, 0x3ff6a09e667f3bccL    # 1.414213562373095

    div-double/2addr v6, v8

    double-to-float v6, v6

    move v5, v6

    .line 1292
    move-object v6, v0

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v7, v5

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 1294
    :cond_2
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    move v0, v6

    goto :goto_0
.end method

.method public floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F
    .locals 5

    .prologue
    .line 1301
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v3, v4, :cond_0

    .line 1303
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    move v0, v3

    .line 1305
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 5

    .prologue
    .line 1238
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Length;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit()[I

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$Unit;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1262
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v0, v3

    :goto_0
    return v0

    .line 1241
    :pswitch_0
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v0, v3

    goto :goto_0

    .line 1243
    :pswitch_1
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v4

    mul-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1245
    :pswitch_2
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontXHeight()F

    move-result v4

    mul-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1247
    :pswitch_3
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v4

    mul-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1249
    :pswitch_4
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x40228f5c    # 2.54f

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1251
    :pswitch_5
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x41cb3333    # 25.4f

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1253
    :pswitch_6
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x42900000    # 72.0f

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1255
    :pswitch_7
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move-object v4, v1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1257
    :pswitch_8
    move-object v3, v1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v3

    move-object v2, v3

    .line 1258
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1259
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v0, v3

    goto :goto_0

    .line 1260
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move-object v4, v2

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 5

    .prologue
    .line 1269
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v3, v4, :cond_1

    .line 1270
    move-object v3, v1

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v3

    move-object v2, v3

    .line 1271
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1272
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move v0, v3

    .line 1275
    :goto_0
    return v0

    .line 1273
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    move-object v4, v2

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1275
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public isNegative()Z
    .locals 3

    .prologue
    .line 1341
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isZero()Z
    .locals 3

    .prologue
    .line 1336
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1347
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
