.class public Landroid/support/v4/util/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SparseArrayCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 40
    move v2, v1

    invoke-static {v2}, Landroid/support/v4/util/SparseArrayCompat;->idealIntArraySize(I)I

    move-result v2

    move v1, v2

    .line 42
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [I

    iput-object v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 43
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 44
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 45
    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 10

    .prologue
    .line 326
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v7, v1

    move v8, v2

    add-int/2addr v7, v8

    move v4, v7

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .line 328
    :goto_0
    move v7, v4

    move v8, v5

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    if-le v7, v8, :cond_1

    .line 329
    move v7, v4

    move v8, v5

    add-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v6, v7

    .line 331
    move-object v7, v0

    move v8, v6

    aget v7, v7, v8

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 332
    move v7, v6

    move v5, v7

    goto :goto_0

    .line 334
    :cond_0
    move v7, v6

    move v4, v7

    goto :goto_0

    .line 337
    :cond_1
    move v7, v4

    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    if-ne v7, v8, :cond_2

    .line 338
    move v7, v1

    move v8, v2

    add-int/2addr v7, v8

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    .line 342
    :goto_1
    return v0

    .line 339
    :cond_2
    move-object v7, v0

    move v8, v4

    aget v7, v7, v8

    move v8, v3

    if-ne v7, v8, :cond_3

    .line 340
    move v7, v4

    move v0, v7

    goto :goto_1

    .line 342
    :cond_3
    move v7, v4

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v0, v7

    goto :goto_1
.end method

.method private gc()V
    .locals 11

    .prologue
    .line 116
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v1, v7

    .line 117
    const/4 v7, 0x0

    move v2, v7

    .line 118
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move-object v3, v7

    .line 119
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move-object v4, v7

    .line 121
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 122
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 124
    move-object v7, v6

    sget-object v8, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    .line 125
    move v7, v5

    move v8, v2

    if-eq v7, v8, :cond_0

    .line 126
    move-object v7, v3

    move v8, v2

    move-object v9, v3

    move v10, v5

    aget v9, v9, v10

    aput v9, v7, v8

    .line 127
    move-object v7, v4

    move v8, v2

    move-object v9, v6

    aput-object v9, v7, v8

    .line 130
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 121
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 135
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 138
    return-void
.end method

.method static idealByteArraySize(I)I
    .locals 5

    .prologue
    .line 346
    move v0, p0

    const/4 v2, 0x4

    move v1, v2

    :goto_0
    move v2, v1

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 347
    move v2, v0

    const/4 v3, 0x1

    move v4, v1

    shl-int/2addr v3, v4

    const/16 v4, 0xc

    add-int/lit8 v3, v3, -0xc

    if-gt v2, v3, :cond_0

    .line 348
    const/4 v2, 0x1

    move v3, v1

    shl-int/2addr v2, v3

    const/16 v3, 0xc

    add-int/lit8 v2, v2, -0xc

    move v0, v2

    .line 350
    :goto_1
    return v0

    .line 346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_1
    move v2, v0

    move v0, v2

    goto :goto_1
.end method

.method static idealIntArraySize(I)I
    .locals 3

    .prologue
    .line 354
    move v0, p0

    move v1, v0

    const/4 v2, 0x4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Landroid/support/v4/util/SparseArrayCompat;->idealByteArraySize(I)I

    move-result v1

    const/4 v2, 0x4

    div-int/lit8 v1, v1, 0x4

    move v0, v1

    return v0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-eqz v7, :cond_0

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    if-gt v7, v8, :cond_0

    .line 297
    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 323
    :goto_0
    return-void

    .line 301
    :cond_0
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v7, :cond_1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_1

    .line 302
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 305
    :cond_1
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v3, v7

    .line 306
    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 307
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroid/support/v4/util/SparseArrayCompat;->idealIntArraySize(I)I

    move-result v7

    move v4, v7

    .line 309
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 310
    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 313
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 317
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 320
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 321
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 322
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 323
    goto :goto_0
.end method

.method public clear()V
    .locals 7

    .prologue
    .line 280
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v1, v4

    .line 281
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move-object v2, v4

    .line 283
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 284
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 283
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    .line 288
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 289
    return-void
.end method

.method public delete(I)V
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v6, v1

    invoke-static {v3, v4, v5, v6}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I

    move-result v3

    move v2, v3

    .line 75
    move v3, v2

    if-ltz v3, :cond_0

    .line 76
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    sget-object v4, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 77
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    sget-object v5, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v5, v3, v4

    .line 78
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 81
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v7, v1

    invoke-static {v4, v5, v6, v7}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I

    move-result v4

    move v3, v4

    .line 62
    move v4, v3

    if-ltz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 63
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .line 65
    :goto_0
    return-object v0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    move-object v0, v4

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 250
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 253
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v3, 0x0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v5, v1

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 266
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 269
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-ge v3, v4, :cond_2

    .line 270
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 271
    move v3, v2

    move v0, v3

    .line 273
    :goto_1
    return v0

    .line 269
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_2
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 211
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 214
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v10, v1

    invoke-static {v7, v8, v9, v10}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I

    move-result v7

    move v3, v7

    .line 148
    move v7, v3

    if-ltz v7, :cond_0

    .line 149
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 190
    :goto_0
    return-void

    .line 151
    :cond_0
    move v7, v3

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 153
    move v7, v3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    if-ge v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    aget-object v7, v7, v8

    sget-object v8, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-ne v7, v8, :cond_1

    .line 154
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 155
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 156
    goto :goto_0

    .line 159
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v7, :cond_2

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_2

    .line 160
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 163
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v10, v1

    invoke-static {v7, v8, v9, v10}, Landroid/support/v4/util/SparseArrayCompat;->binarySearch([IIII)I

    move-result v7

    const/4 v8, -0x1

    xor-int/lit8 v7, v7, -0x1

    move v3, v7

    .line 166
    :cond_2
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v8, v8

    if-lt v7, v8, :cond_3

    .line 167
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Landroid/support/v4/util/SparseArrayCompat;->idealIntArraySize(I)I

    move-result v7

    move v4, v7

    .line 169
    move v7, v4

    new-array v7, v7, [I

    move-object v5, v7

    .line 170
    move v7, v4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v6, v7

    .line 173
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    .line 177
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 180
    :cond_3
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v8, v3

    sub-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 182
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v12, v3

    sub-int/2addr v11, v12

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mKeys:[I

    move v8, v3

    move v9, v1

    aput v9, v7, v8

    .line 187
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v8, v3

    move-object v9, v2

    aput-object v9, v7, v8

    .line 188
    move-object v7, v0

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(I)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->delete(I)V

    .line 88
    return-void
.end method

.method public removeAt(I)V
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    sget-object v3, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 95
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    sget-object v4, Landroid/support/v4/util/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 96
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    .line 98
    :cond_0
    return-void
.end method

.method public removeAtRange(II)V
    .locals 8

    .prologue
    .line 107
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v5

    .line 108
    move v5, v1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 109
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 237
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 240
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 241
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 198
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 201
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/SparseArrayCompat;->mSize:I

    move v0, v1

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 224
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/SparseArrayCompat;->gc()V

    .line 227
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method
