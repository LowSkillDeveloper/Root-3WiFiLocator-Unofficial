.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordJellyBeanImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordJellyBeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsMr1Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 500
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatJellyBean;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    .line 501
    return-void
.end method
