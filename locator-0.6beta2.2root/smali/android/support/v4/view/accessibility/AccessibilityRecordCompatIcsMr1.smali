.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatIcsMr1.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxScrollX(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getMaxScrollY(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static setMaxScrollX(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 35
    return-void
.end method

.method public static setMaxScrollY(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 39
    return-void
.end method
