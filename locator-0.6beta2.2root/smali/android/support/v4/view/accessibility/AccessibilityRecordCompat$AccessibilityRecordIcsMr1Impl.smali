.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsMr1Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 475
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxScrollX(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 478
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->getMaxScrollX(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMaxScrollY(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 483
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->getMaxScrollY(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public setMaxScrollX(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    .line 488
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->setMaxScrollX(Ljava/lang/Object;I)V

    .line 489
    return-void
.end method

.method public setMaxScrollY(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;->setMaxScrollY(Ljava/lang/Object;I)V

    .line 494
    return-void
.end method
