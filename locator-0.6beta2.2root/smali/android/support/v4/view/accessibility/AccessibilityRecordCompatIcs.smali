.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompatIcs.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddedCount(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getCurrentItemIndex(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getFromIndex(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getItemCount(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getRemovedCount(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getScrollX(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getScrollY(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getSource(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getText(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getToIndex(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getWindowId(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isFullScreen(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 120
    return-void
.end method

.method public static setAddedCount(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 124
    return-void
.end method

.method public static setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method public static setChecked(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 132
    return-void
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method public static setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public static setCurrentItemIndex(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 144
    return-void
.end method

.method public static setEnabled(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 148
    return-void
.end method

.method public static setFromIndex(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 151
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 152
    return-void
.end method

.method public static setFullScreen(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    .line 156
    return-void
.end method

.method public static setItemCount(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 160
    return-void
.end method

.method public static setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    .line 164
    return-void
.end method

.method public static setPassword(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 168
    return-void
.end method

.method public static setRemovedCount(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 172
    return-void
.end method

.method public static setScrollX(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 176
    return-void
.end method

.method public static setScrollY(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 180
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 184
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method public static setToIndex(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 192
    return-void
.end method
