.class public Lcom/larvalabs/svgandroid/ParserHelper;
.super Ljava/lang/Object;
.source "ParserHelper.java"


# static fields
.field private static final pow10:[D


# instance fields
.field private current:C

.field private n:I

.field public pos:I

.field private s:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 292
    const/16 v1, 0x80

    new-array v1, v1, [D

    sput-object v1, Lcom/larvalabs/svgandroid/ParserHelper;->pow10:[D

    .line 295
    const/4 v1, 0x0

    move v0, v1

    :goto_0
    move v1, v0

    sget-object v2, Lcom/larvalabs/svgandroid/ParserHelper;->pow10:[D

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 27
    return-void

    .line 296
    :cond_0
    sget-object v1, Lcom/larvalabs/svgandroid/ParserHelper;->pow10:[D

    move v2, v0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    move v5, v0

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/larvalabs/svgandroid/ParserHelper;->s:Ljava/lang/CharSequence;

    .line 36
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    .line 37
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Lcom/larvalabs/svgandroid/ParserHelper;->n:I

    .line 38
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iput-char v4, v3, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 39
    return-void
.end method

.method public static buildFloat(II)F
    .locals 6

    .prologue
    .line 268
    move v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, -0x7d

    if-lt v2, v3, :cond_0

    move v2, v0

    if-nez v2, :cond_1

    .line 269
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 286
    :goto_0
    return v0

    .line 272
    :cond_1
    move v2, v1

    const/16 v3, 0x80

    if-lt v2, v3, :cond_3

    .line 273
    move v2, v0

    if-lez v2, :cond_2

    .line 274
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 273
    :goto_1
    move v0, v2

    goto :goto_0

    .line 275
    :cond_2
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_1

    .line 278
    :cond_3
    move v2, v1

    if-nez v2, :cond_4

    .line 279
    move v2, v0

    int-to-float v2, v2

    move v0, v2

    goto :goto_0

    .line 282
    :cond_4
    move v2, v0

    const/high16 v3, 0x4000000

    if-lt v2, v3, :cond_5

    .line 283
    add-int/lit8 v0, v0, 0x1

    .line 286
    :cond_5
    move v2, v1

    if-lez v2, :cond_6

    move v2, v0

    int-to-double v2, v2

    sget-object v4, Lcom/larvalabs/svgandroid/ParserHelper;->pow10:[D

    move v5, v1

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    :goto_2
    double-to-float v2, v2

    move v0, v2

    goto :goto_0

    :cond_6
    move v2, v0

    int-to-double v2, v2

    sget-object v4, Lcom/larvalabs/svgandroid/ParserHelper;->pow10:[D

    move v5, v1

    neg-int v5, v5

    aget-wide v4, v4, v5

    div-double/2addr v2, v4

    goto :goto_2
.end method

.method private read()C
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    move-object v2, v0

    iget v2, v2, Lcom/larvalabs/svgandroid/ParserHelper;->n:I

    if-ge v1, v2, :cond_0

    .line 43
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    .line 45
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    move-object v2, v0

    iget v2, v2, Lcom/larvalabs/svgandroid/ParserHelper;->n:I

    if-ne v1, v2, :cond_1

    .line 46
    const/4 v1, 0x0

    move v0, v1

    .line 48
    :goto_0
    return v0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/larvalabs/svgandroid/ParserHelper;->s:Ljava/lang/CharSequence;

    move-object v2, v0

    iget v2, v2, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private reportUnexpectedCharacterError(C)V
    .locals 8

    .prologue
    .line 261
    move-object v0, p0

    move v1, p1

    new-instance v2, Ljava/lang/RuntimeException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Unexpected char \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public advance()V
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v2

    iput-char v2, v1, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 80
    return-void
.end method

.method public nextFloat()F
    .locals 3

    .prologue
    .line 301
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/larvalabs/svgandroid/ParserHelper;->skipWhitespace()V

    .line 302
    move-object v2, v0

    invoke-virtual {v2}, Lcom/larvalabs/svgandroid/ParserHelper;->parseFloat()F

    move-result v2

    move v1, v2

    .line 303
    move-object v2, v0

    invoke-virtual {v2}, Lcom/larvalabs/svgandroid/ParserHelper;->skipNumberSeparator()V

    .line 304
    move v2, v1

    move v0, v2

    return v0
.end method

.method public parseFloat()F
    .locals 12

    .prologue
    .line 86
    move-object v0, p0

    const/4 v9, 0x0

    move v1, v9

    .line 87
    const/4 v9, 0x0

    move v2, v9

    .line 88
    const/4 v9, 0x1

    move v3, v9

    .line 89
    const/4 v9, 0x0

    move v4, v9

    .line 91
    const/4 v9, 0x0

    move v5, v9

    .line 92
    const/4 v9, 0x0

    move v6, v9

    .line 93
    const/4 v9, 0x0

    move v7, v9

    .line 94
    const/4 v9, 0x1

    move v8, v9

    .line 96
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_0

    .line 103
    :goto_0
    :pswitch_0
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_1

    .line 105
    :pswitch_1
    const/high16 v9, 0x7fc00000    # Float.NaN

    move v0, v9

    .line 257
    :goto_1
    return v0

    .line 98
    :pswitch_2
    const/4 v9, 0x0

    move v3, v9

    .line 101
    :pswitch_3
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v10

    iput-char v10, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    goto :goto_0

    .line 146
    :goto_2
    :pswitch_4
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_3

    .line 147
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v10

    iput-char v10, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 148
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_2

    .line 151
    move v9, v4

    if-nez v9, :cond_3

    .line 152
    move-object v9, v0

    move-object v10, v0

    iget-char v10, v10, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    invoke-direct {v9, v10}, Lcom/larvalabs/svgandroid/ParserHelper;->reportUnexpectedCharacterError(C)V

    .line 153
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    .line 111
    :pswitch_5
    const/4 v9, 0x1

    move v4, v9

    .line 113
    :goto_3
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v10

    iput-char v10, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 114
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    sparse-switch v9, :sswitch_data_0

    .line 121
    const/4 v9, 0x0

    move v0, v9

    goto :goto_1

    .line 128
    :pswitch_6
    :sswitch_0
    const/4 v9, 0x1

    move v4, v9

    .line 130
    :goto_4
    move v9, v2

    const/16 v10, 0x9

    if-ge v9, v10, :cond_0

    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 132
    move v9, v1

    const/16 v10, 0xa

    mul-int/lit8 v9, v9, 0xa

    move-object v10, v0

    iget-char v10, v10, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    const/16 v11, 0x30

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v9, v10

    move v1, v9

    .line 136
    :goto_5
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v10

    iput-char v10, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 137
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_3

    .line 139
    goto :goto_2

    .line 119
    :sswitch_1
    goto :goto_2

    .line 112
    :sswitch_2
    goto :goto_3

    .line 134
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 129
    :pswitch_7
    goto :goto_4

    .line 158
    :pswitch_8
    move v9, v2

    if-nez v9, :cond_1

    .line 160
    :goto_6
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v10

    iput-char v10, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 161
    add-int/lit8 v7, v7, -0x1

    .line 162
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_4

    .line 167
    move v9, v4

    if-nez v9, :cond_3

    .line 168
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 178
    :cond_1
    :goto_7
    :pswitch_9
    move v9, v2

    const/16 v10, 0x9

    if-ge v9, v10, :cond_2

    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 180
    move v9, v1

    const/16 v10, 0xa

    mul-int/lit8 v9, v9, 0xa

    move-object v10, v0

    iget-char v10, v10, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    const/16 v11, 0x30

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v9, v10

    move v1, v9

    .line 181
    add-int/lit8 v7, v7, -0x1

    .line 183
    :cond_2
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v10

    iput-char v10, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 184
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_5

    .line 194
    :cond_3
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    sparse-switch v9, :sswitch_data_1

    .line 249
    :goto_8
    move v9, v8

    if-nez v9, :cond_4

    .line 250
    move v9, v5

    neg-int v9, v9

    move v5, v9

    .line 252
    :cond_4
    move v9, v5

    move v10, v7

    add-int/2addr v9, v10

    move v5, v9

    .line 253
    move v9, v3

    if-nez v9, :cond_5

    .line 254
    move v9, v1

    neg-int v9, v9

    move v1, v9

    .line 257
    :cond_5
    move v9, v1

    move v10, v5

    invoke-static {v9, v10}, Lcom/larvalabs/svgandroid/ParserHelper;->buildFloat(II)F

    move-result v9

    move v0, v9

    goto/16 :goto_1

    .line 159
    :pswitch_a
    goto :goto_6

    .line 177
    :pswitch_b
    goto :goto_7

    .line 196
    :sswitch_3
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v10

    iput-char v10, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 197
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_6

    .line 199
    :pswitch_c
    move-object v9, v0

    move-object v10, v0

    iget-char v10, v10, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    invoke-direct {v9, v10}, Lcom/larvalabs/svgandroid/ParserHelper;->reportUnexpectedCharacterError(C)V

    .line 200
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 202
    :pswitch_d
    const/4 v9, 0x0

    move v8, v9

    .line 204
    :pswitch_e
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v10

    iput-char v10, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 205
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_7

    .line 207
    move-object v9, v0

    move-object v10, v0

    iget-char v10, v10, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    invoke-direct {v9, v10}, Lcom/larvalabs/svgandroid/ParserHelper;->reportUnexpectedCharacterError(C)V

    .line 208
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_1

    .line 216
    :pswitch_f
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_8

    goto :goto_8

    .line 219
    :goto_9
    :pswitch_10
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v10

    iput-char v10, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 220
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_9

    .line 225
    goto :goto_8

    .line 233
    :goto_a
    :pswitch_11
    move v9, v6

    const/4 v10, 0x3

    if-ge v9, v10, :cond_6

    .line 234
    add-int/lit8 v6, v6, 0x1

    .line 235
    move v9, v5

    const/16 v10, 0xa

    mul-int/lit8 v9, v9, 0xa

    move-object v10, v0

    iget-char v10, v10, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    const/16 v11, 0x30

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v9, v10

    move v5, v9

    .line 237
    :cond_6
    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Lcom/larvalabs/svgandroid/ParserHelper;->read()C

    move-result v10

    iput-char v10, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    .line 238
    move-object v9, v0

    iget-char v9, v9, Lcom/larvalabs/svgandroid/ParserHelper;->current:C

    packed-switch v9, :pswitch_data_a

    .line 240
    goto/16 :goto_8

    .line 218
    :pswitch_12
    goto :goto_9

    .line 232
    :pswitch_13
    goto :goto_a

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 103
    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 148
    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 114
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_1
        0x30 -> :sswitch_2
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x45 -> :sswitch_1
        0x65 -> :sswitch_1
    .end sparse-switch

    .line 137
    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 162
    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 184
    :pswitch_data_5
    .packed-switch 0x30
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    .line 194
    :sswitch_data_1
    .sparse-switch
        0x45 -> :sswitch_3
        0x65 -> :sswitch_3
    .end sparse-switch

    .line 197
    :pswitch_data_6
    .packed-switch 0x2b
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 205
    :pswitch_data_7
    .packed-switch 0x30
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 216
    :pswitch_data_8
    .packed-switch 0x30
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 220
    :pswitch_data_9
    .packed-switch 0x30
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    .line 238
    :pswitch_data_a
    .packed-switch 0x30
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public skipNumberSeparator()V
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    :goto_0
    move-object v2, v0

    iget v2, v2, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    move-object v3, v0

    iget v3, v3, Lcom/larvalabs/svgandroid/ParserHelper;->n:I

    if-lt v2, v3, :cond_0

    .line 76
    :goto_1
    return-void

    .line 64
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/larvalabs/svgandroid/ParserHelper;->s:Ljava/lang/CharSequence;

    move-object v3, v0

    iget v3, v3, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v1, v2

    .line 65
    move v2, v1

    sparse-switch v2, :sswitch_data_0

    .line 73
    goto :goto_1

    .line 70
    :sswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/larvalabs/svgandroid/ParserHelper;->advance()V

    .line 71
    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public skipWhitespace()V
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    :goto_0
    move-object v1, v0

    iget v1, v1, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    move-object v2, v0

    iget v2, v2, Lcom/larvalabs/svgandroid/ParserHelper;->n:I

    if-lt v1, v2, :cond_1

    .line 60
    :cond_0
    return-void

    .line 54
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/larvalabs/svgandroid/ParserHelper;->s:Ljava/lang/CharSequence;

    move-object v2, v0

    iget v2, v2, Lcom/larvalabs/svgandroid/ParserHelper;->pos:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    move-object v1, v0

    invoke-virtual {v1}, Lcom/larvalabs/svgandroid/ParserHelper;->advance()V

    goto :goto_0
.end method
