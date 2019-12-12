.class public Landroid/support/v4/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 45
    move v2, v1

    invoke-static {v2}, Landroid/support/v4/util/LongSparseArray;->idealLongArraySize(I)I

    move-result v2

    move v1, v2

    .line 47
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [J

    iput-object v3, v2, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 48
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v2, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 49
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 50
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 12

    .prologue
    .line 335
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v5, v8

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .line 337
    :goto_0
    move v8, v5

    move v9, v6

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 338
    move v8, v5

    move v9, v6

    add-int/2addr v8, v9

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move v7, v8

    .line 340
    move-object v8, v0

    move v9, v7

    aget-wide v8, v8, v9

    move-wide v10, v3

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 341
    move v8, v7

    move v6, v8

    goto :goto_0

    .line 343
    :cond_0
    move v8, v7

    move v5, v8

    goto :goto_0

    .line 346
    :cond_1
    move v8, v5

    move v9, v1

    move v10, v2

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_2

    .line 347
    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    move v0, v8

    .line 351
    :goto_1
    return v0

    .line 348
    :cond_2
    move-object v8, v0

    move v9, v5

    aget-wide v8, v8, v9

    move-wide v10, v3

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 349
    move v8, v5

    move v0, v8

    goto :goto_1

    .line 351
    :cond_3
    move v8, v5

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    move v0, v8

    goto :goto_1
.end method

.method private gc()V
    .locals 11

    .prologue
    .line 123
    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move v1, v7

    .line 124
    const/4 v7, 0x0

    move v2, v7

    .line 125
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    move-object v3, v7

    .line 126
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move-object v4, v7

    .line 128
    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v1

    if-ge v7, v8, :cond_2

    .line 129
    move-object v7, v4

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 131
    move-object v7, v6

    sget-object v8, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    .line 132
    move v7, v5

    move v8, v2

    if-eq v7, v8, :cond_0

    .line 133
    move-object v7, v3

    move v8, v2

    move-object v9, v3

    move v10, v5

    aget-wide v9, v9, v10

    aput-wide v9, v7, v8

    .line 134
    move-object v7, v4

    move v8, v2

    move-object v9, v6

    aput-object v9, v7, v8

    .line 135
    move-object v7, v4

    move v8, v5

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 128
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 142
    :cond_2
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 143
    move-object v7, v0

    move v8, v2

    iput v8, v7, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 146
    return-void
.end method

.method public static idealByteArraySize(I)I
    .locals 5

    .prologue
    .line 355
    move v0, p0

    const/4 v2, 0x4

    move v1, v2

    :goto_0
    move v2, v1

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    .line 356
    move v2, v0

    const/4 v3, 0x1

    move v4, v1

    shl-int/2addr v3, v4

    const/16 v4, 0xc

    add-int/lit8 v3, v3, -0xc

    if-gt v2, v3, :cond_0

    .line 357
    const/4 v2, 0x1

    move v3, v1

    shl-int/2addr v2, v3

    const/16 v3, 0xc

    add-int/lit8 v2, v2, -0xc

    move v0, v2

    .line 359
    :goto_1
    return v0

    .line 355
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    move v2, v0

    move v0, v2

    goto :goto_1
.end method

.method public static idealLongArraySize(I)I
    .locals 3

    .prologue
    .line 363
    move v0, p0

    move v1, v0

    const/16 v2, 0x8

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Landroid/support/v4/util/LongSparseArray;->idealByteArraySize(I)I

    move-result v1

    const/16 v2, 0x8

    div-int/lit8 v1, v1, 0x8

    move v0, v1

    return v0
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-eqz v8, :cond_0

    move-wide v8, v1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/util/LongSparseArray;->mSize:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 306
    move-object v8, v0

    move-wide v9, v1

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 332
    :goto_0
    return-void

    .line 310
    :cond_0
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v8, :cond_1

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v9, v9

    if-lt v8, v9, :cond_1

    .line 311
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 314
    :cond_1
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move v4, v8

    .line 315
    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v9, v9

    if-lt v8, v9, :cond_2

    .line 316
    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Landroid/support/v4/util/LongSparseArray;->idealLongArraySize(I)I

    move-result v8

    move v5, v8

    .line 318
    move v8, v5

    new-array v8, v8, [J

    move-object v6, v8

    .line 319
    move v8, v5

    new-array v8, v8, [Ljava/lang/Object;

    move-object v7, v8

    .line 322
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 326
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 329
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    move v9, v4

    move-wide v10, v1

    aput-wide v10, v8, v9

    .line 330
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v3

    aput-object v10, v8, v9

    .line 331
    move-object v8, v0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 332
    goto :goto_0
.end method

.method public clear()V
    .locals 7

    .prologue
    .line 289
    move-object v0, p0

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move v1, v4

    .line 290
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move-object v2, v4

    .line 292
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 293
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 292
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/v4/util/LongSparseArray;->mSize:I

    .line 297
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 298
    return-void
.end method

.method public clone()Landroid/support/v4/util/LongSparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LongSparseArray",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 57
    move-object v3, v0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/util/LongSparseArray;

    move-object v1, v3

    .line 58
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    invoke-virtual {v4}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    iput-object v4, v3, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 59
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, v3, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 60
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clone()Landroid/support/v4/util/LongSparseArray;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public delete(J)V
    .locals 9

    .prologue
    .line 93
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move-wide v7, v1

    invoke-static {v4, v5, v6, v7, v8}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v4

    move v3, v4

    .line 95
    move v4, v3

    if-ltz v4, :cond_0

    .line 96
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v5, v3

    aget-object v4, v4, v5

    sget-object v5, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v5, :cond_0

    .line 97
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v5, v3

    sget-object v6, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v6, v4, v5

    .line 98
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 101
    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move-wide v8, v1

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v5

    move v4, v5

    .line 82
    move v5, v4

    if-ltz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v6, v4

    aget-object v5, v5, v6

    sget-object v6, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v5, v6, :cond_1

    .line 83
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .line 85
    :goto_0
    return-object v0

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v6, v4

    aget-object v5, v5, v6

    move-object v0, v5

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 8

    .prologue
    .line 258
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 259
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 262
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move-wide v6, v1

    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v3

    move v0, v3

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
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 275
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 278
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v3, v4, :cond_2

    .line 279
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 280
    move v3, v2

    move v0, v3

    .line 282
    :goto_1
    return v0

    .line 278
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_2
    const/4 v3, -0x1

    move v0, v3

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 4

    .prologue
    .line 218
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 219
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 222
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    move v3, v1

    aget-wide v2, v2, v3

    move-wide v0, v2

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move-wide v11, v1

    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v8

    move v4, v8

    .line 156
    move v8, v4

    if-ltz v8, :cond_0

    .line 157
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v3

    aput-object v10, v8, v9

    .line 198
    :goto_0
    return-void

    .line 159
    :cond_0
    move v8, v4

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 161
    move v8, v4

    move-object v9, v0

    iget v9, v9, Landroid/support/v4/util/LongSparseArray;->mSize:I

    if-ge v8, v9, :cond_1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    aget-object v8, v8, v9

    sget-object v9, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v8, v9, :cond_1

    .line 162
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    move v9, v4

    move-wide v10, v1

    aput-wide v10, v8, v9

    .line 163
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v3

    aput-object v10, v8, v9

    .line 164
    goto :goto_0

    .line 167
    :cond_1
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v8, :cond_2

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v9, v9

    if-lt v8, v9, :cond_2

    .line 168
    move-object v8, v0

    invoke-direct {v8}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 171
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move-wide v11, v1

    invoke-static {v8, v9, v10, v11, v12}, Landroid/support/v4/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v8

    const/4 v9, -0x1

    xor-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 174
    :cond_2
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v9, v9

    if-lt v8, v9, :cond_3

    .line 175
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/LongSparseArray;->mSize:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Landroid/support/v4/util/LongSparseArray;->idealLongArraySize(I)I

    move-result v8

    move v5, v8

    .line 177
    move v8, v5

    new-array v8, v8, [J

    move-object v6, v8

    .line 178
    move v8, v5

    new-array v8, v8, [Ljava/lang/Object;

    move-object v7, v8

    .line 181
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    const/4 v9, 0x0

    move-object v10, v6

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v10, v7

    const/4 v11, 0x0

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    move-object v8, v0

    move-object v9, v6

    iput-object v9, v8, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    .line 185
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 188
    :cond_3
    move-object v8, v0

    iget v8, v8, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move v9, v4

    sub-int/2addr v8, v9

    if-eqz v8, :cond_4

    .line 190
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move v13, v4

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v0

    iget v12, v12, Landroid/support/v4/util/LongSparseArray;->mSize:I

    move v13, v4

    sub-int/2addr v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mKeys:[J

    move v9, v4

    move-wide v10, v1

    aput-wide v10, v8, v9

    .line 195
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v9, v4

    move-object v10, v3

    aput-object v10, v8, v9

    .line 196
    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Landroid/support/v4/util/LongSparseArray;->mSize:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Landroid/support/v4/util/LongSparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(J)V
    .locals 6

    .prologue
    .line 107
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 108
    return-void
.end method

.method public removeAt(I)V
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    sget-object v3, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 115
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v3, v1

    sget-object v4, Landroid/support/v4/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v4, v2, v3

    .line 116
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    .line 118
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
    .line 245
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v3, :cond_0

    .line 246
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 249
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 250
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 206
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 209
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/util/LongSparseArray;->mSize:I

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
    .line 232
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/util/LongSparseArray;->mGarbage:Z

    if-eqz v2, :cond_0

    .line 233
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/util/LongSparseArray;->gc()V

    .line 236
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method
