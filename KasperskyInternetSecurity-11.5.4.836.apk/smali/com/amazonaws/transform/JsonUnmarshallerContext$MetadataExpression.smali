.class Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;
.super Ljava/lang/Object;
.source "JsonUnmarshallerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/JsonUnmarshallerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataExpression"
.end annotation


# instance fields
.field public expression:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public targetDepth:I

.field final synthetic this$0:Lcom/amazonaws/transform/JsonUnmarshallerContext;


# direct methods
.method public constructor <init>(Lcom/amazonaws/transform/JsonUnmarshallerContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p2, "expression"    # Ljava/lang/String;
    .param p3, "targetDepth"    # I
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;->this$0:Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;->expression:Ljava/lang/String;

    .line 245
    iput p3, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;->targetDepth:I

    .line 246
    iput-object p4, p0, Lcom/amazonaws/transform/JsonUnmarshallerContext$MetadataExpression;->key:Ljava/lang/String;

    .line 247
    return-void
.end method
