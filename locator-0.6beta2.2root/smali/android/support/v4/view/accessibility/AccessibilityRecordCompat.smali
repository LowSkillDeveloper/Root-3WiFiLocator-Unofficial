.class public Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;


# instance fields
.field private final mRecord:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 506
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    .line 514
    :goto_0
    return-void

    .line 507
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 508
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_0

    .line 509
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 510
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_0

    .line 512
    :cond_2
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 524
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    .line 525
    return-void
.end method

.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 4

    .prologue
    .line 552
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    invoke-interface {v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->obtain()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 6

    .prologue
    .line 542
    move-object v0, p0

    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1017
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 1018
    const/4 v3, 0x1

    move v0, v3

    .line 1034
    :goto_0
    return v0

    .line 1020
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 1021
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1023
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 1024
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1026
    :cond_2
    move-object v3, v1

    check-cast v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-object v2, v3

    .line 1027
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 1028
    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 1029
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1031
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1032
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1034
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getAddedCount()I
    .locals 3

    .prologue
    .line 872
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getAddedCount(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 942
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 912
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 962
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 3

    .prologue
    .line 735
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getCurrentItemIndex(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getFromIndex()I
    .locals 3

    .prologue
    .line 758
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getFromIndex(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 531
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getItemCount()I
    .locals 3

    .prologue
    .line 715
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getItemCount(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMaxScrollX()I
    .locals 3

    .prologue
    .line 837
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getMaxScrollX(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMaxScrollY()I
    .locals 3

    .prologue
    .line 854
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getMaxScrollY(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 982
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getRemovedCount()I
    .locals 3

    .prologue
    .line 892
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getRemovedCount(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getScrollX()I
    .locals 3

    .prologue
    .line 801
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getScrollX(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getScrollY()I
    .locals 3

    .prologue
    .line 819
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getScrollY(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getSource()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 597
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getSource(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getText(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getToIndex()I
    .locals 3

    .prologue
    .line 782
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getToIndex(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getWindowId()I
    .locals 3

    .prologue
    .line 606
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getWindowId(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1011
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 3

    .prologue
    .line 615
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isChecked(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 635
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isFullScreen()Z
    .locals 3

    .prologue
    .line 675
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isFullScreen(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isPassword()Z
    .locals 3

    .prologue
    .line 655
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isPassword(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isScrollable()Z
    .locals 3

    .prologue
    .line 695
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isScrollable(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 1006
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->recycle(Ljava/lang/Object;)V

    .line 1007
    return-void
.end method

.method public setAddedCount(I)V
    .locals 5

    .prologue
    .line 883
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setAddedCount(Ljava/lang/Object;I)V

    .line 884
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 953
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 954
    return-void
.end method

.method public setChecked(Z)V
    .locals 5

    .prologue
    .line 626
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setChecked(Ljava/lang/Object;Z)V

    .line 627
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 923
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 924
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 973
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 974
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 5

    .prologue
    .line 746
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setCurrentItemIndex(Ljava/lang/Object;I)V

    .line 747
    return-void
.end method

.method public setEnabled(Z)V
    .locals 5

    .prologue
    .line 646
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setEnabled(Ljava/lang/Object;Z)V

    .line 647
    return-void
.end method

.method public setFromIndex(I)V
    .locals 5

    .prologue
    .line 772
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setFromIndex(Ljava/lang/Object;I)V

    .line 773
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 5

    .prologue
    .line 686
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setFullScreen(Ljava/lang/Object;Z)V

    .line 687
    return-void
.end method

.method public setItemCount(I)V
    .locals 5

    .prologue
    .line 726
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setItemCount(Ljava/lang/Object;I)V

    .line 727
    return-void
.end method

.method public setMaxScrollX(I)V
    .locals 5

    .prologue
    .line 845
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setMaxScrollX(Ljava/lang/Object;I)V

    .line 846
    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 5

    .prologue
    .line 863
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setMaxScrollY(Ljava/lang/Object;I)V

    .line 864
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 993
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    .line 994
    return-void
.end method

.method public setPassword(Z)V
    .locals 5

    .prologue
    .line 666
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setPassword(Ljava/lang/Object;Z)V

    .line 667
    return-void
.end method

.method public setRemovedCount(I)V
    .locals 5

    .prologue
    .line 903
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setRemovedCount(Ljava/lang/Object;I)V

    .line 904
    return-void
.end method

.method public setScrollX(I)V
    .locals 5

    .prologue
    .line 810
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollX(Ljava/lang/Object;I)V

    .line 811
    return-void
.end method

.method public setScrollY(I)V
    .locals 5

    .prologue
    .line 828
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollY(Ljava/lang/Object;I)V

    .line 829
    return-void
.end method

.method public setScrollable(Z)V
    .locals 5

    .prologue
    .line 706
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollable(Ljava/lang/Object;Z)V

    .line 707
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 563
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    .line 564
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 581
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move-object v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    .line 582
    return-void
.end method

.method public setToIndex(I)V
    .locals 5

    .prologue
    .line 792
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setToIndex(Ljava/lang/Object;I)V

    .line 793
    return-void
.end method
