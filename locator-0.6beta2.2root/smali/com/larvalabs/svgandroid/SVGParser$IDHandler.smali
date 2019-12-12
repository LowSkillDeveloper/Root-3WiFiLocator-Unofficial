.class Lcom/larvalabs/svgandroid/SVGParser$IDHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/larvalabs/svgandroid/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IDHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;
    }
.end annotation


# instance fields
.field idRecordingStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;",
            ">;"
        }
    .end annotation
.end field

.field idXml:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 1066
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 1067
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idXml:Ljava/util/HashMap;

    .line 1079
    move-object v1, v0

    new-instance v2, Ljava/util/Stack;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v2, v1, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idRecordingStack:Ljava/util/Stack;

    .line 1066
    return-void
.end method

.method synthetic constructor <init>(Lcom/larvalabs/svgandroid/SVGParser$IDHandler;)V
    .locals 3

    .prologue
    .line 1066
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;-><init>()V

    return-void
.end method

.method private appendElementString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10

    .prologue
    .line 1086
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v1

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1087
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1088
    const/4 v7, 0x0

    move v6, v7

    :goto_0
    move v7, v6

    move-object v8, v5

    invoke-interface {v8}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 1095
    move-object v7, v1

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1096
    return-void

    .line 1089
    :cond_0
    move-object v7, v1

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1090
    move-object v7, v1

    move-object v8, v5

    move v9, v6

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1091
    move-object v7, v1

    const-string v8, "=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1092
    move-object v7, v1

    move-object v8, v5

    move v9, v6

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/larvalabs/svgandroid/SVGParser;->access$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1093
    move-object v7, v1

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1088
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 1114
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1115
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;

    move-object v4, v6

    .line 1116
    move-object v6, v4

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    const-string v7, "</"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1117
    move-object v6, v4

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1118
    move-object v6, v4

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1119
    move-object v6, v4

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->level:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->level:I

    .line 1120
    move-object v6, v4

    iget v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->level:I

    if-nez v6, :cond_0

    .line 1121
    move-object v6, v4

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1123
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idXml:Ljava/util/HashMap;

    move-object v7, v4

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->id:Ljava/lang/String;

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1124
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    .line 1125
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1126
    move-object v6, v0

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;

    iget-object v6, v6, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1130
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 14

    .prologue
    .line 1100
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v7, v4

    const-string v8, "id"

    invoke-interface {v7, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 1101
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 1102
    new-instance v7, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;-><init>(Lcom/larvalabs/svgandroid/SVGParser$IDHandler;Ljava/lang/String;)V

    move-object v6, v7

    .line 1103
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idRecordingStack:Ljava/util/Stack;

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1105
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1106
    move-object v7, v0

    iget-object v7, v7, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->idRecordingStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;

    move-object v6, v7

    .line 1107
    move-object v7, v6

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    iget v8, v8, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->level:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->level:I

    .line 1108
    move-object v7, v0

    move-object v8, v6

    iget-object v8, v8, Lcom/larvalabs/svgandroid/SVGParser$IDHandler$IdRecording;->sb:Ljava/lang/StringBuilder;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Lcom/larvalabs/svgandroid/SVGParser$IDHandler;->appendElementString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1110
    :cond_1
    return-void
.end method
