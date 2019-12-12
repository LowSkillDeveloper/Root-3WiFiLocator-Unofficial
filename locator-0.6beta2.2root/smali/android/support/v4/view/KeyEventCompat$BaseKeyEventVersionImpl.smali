.class Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseKeyEventVersionImpl"
.end annotation


# static fields
.field private static final META_ALL_MASK:I = 0xf7

.field private static final META_MODIFIER_MASK:I = 0xf7


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .locals 12

    .prologue
    .line 51
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v8, v1

    move v9, v2

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 52
    move v8, v3

    move v9, v4

    or-int/2addr v8, v9

    move v6, v8

    .line 53
    move v8, v1

    move v9, v6

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v7, v8

    .line 55
    move v8, v5

    if-eqz v8, :cond_3

    .line 56
    move v8, v7

    if-eqz v8, :cond_2

    .line 57
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "bad arguments"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 51
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 53
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 59
    :cond_2
    move v8, v0

    move v9, v6

    const/4 v10, -0x1

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v8, v9

    move v0, v8

    .line 63
    :goto_2
    return v0

    .line 60
    :cond_3
    move v8, v7

    if-eqz v8, :cond_4

    .line 61
    move v8, v0

    move v9, v2

    const/4 v10, -0x1

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v8, v9

    move v0, v8

    goto :goto_2

    .line 63
    :cond_4
    move v8, v0

    move v0, v8

    goto :goto_2
.end method


# virtual methods
.method public isTracking(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public metaStateHasModifiers(II)Z
    .locals 8

    .prologue
    .line 80
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v3

    const/16 v4, 0xf7

    and-int/lit16 v3, v3, 0xf7

    move v1, v3

    .line 81
    move v3, v1

    move v4, v2

    const/4 v5, 0x1

    const/16 v6, 0x40

    const/16 v7, 0x80

    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result v3

    move v1, v3

    .line 83
    move v3, v1

    move v4, v2

    const/4 v5, 0x2

    const/16 v6, 0x10

    const/16 v7, 0x20

    invoke-static {v3, v4, v5, v6, v7}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result v3

    move v1, v3

    .line 85
    move v3, v1

    move v4, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public metaStateHasNoModifiers(I)Z
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v2

    const/16 v3, 0xf7

    and-int/lit16 v2, v2, 0xf7

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public normalizeMetaState(I)I
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/16 v3, 0xc0

    and-int/lit16 v2, v2, 0xc0

    if-eqz v2, :cond_0

    .line 70
    move v2, v1

    const/4 v3, 0x1

    or-int/lit8 v2, v2, 0x1

    move v1, v2

    .line 72
    :cond_0
    move v2, v1

    const/16 v3, 0x30

    and-int/lit8 v2, v2, 0x30

    if-eqz v2, :cond_1

    .line 73
    move v2, v1

    const/4 v3, 0x2

    or-int/lit8 v2, v2, 0x2

    move v1, v2

    .line 75
    :cond_1
    move v2, v1

    const/16 v3, 0xf7

    and-int/lit16 v2, v2, 0xf7

    move v0, v2

    return v0
.end method

.method public startTracking(Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
