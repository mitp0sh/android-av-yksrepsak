.class Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;
.super Ljava/lang/Object;
.source "StaxUnmarshallerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/transform/StaxUnmarshallerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MetadataExpression"
.end annotation


# instance fields
.field public expression:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public targetDepth:I

.field final synthetic this$0:Lcom/amazonaws/transform/StaxUnmarshallerContext;


# direct methods
.method public constructor <init>(Lcom/amazonaws/transform/StaxUnmarshallerContext;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p2, "expression"    # Ljava/lang/String;
    .param p3, "targetDepth"    # I
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->this$0:Lcom/amazonaws/transform/StaxUnmarshallerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->expression:Ljava/lang/String;

    .line 265
    iput p3, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->targetDepth:I

    .line 266
    iput-object p4, p0, Lcom/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression;->key:Ljava/lang/String;

    .line 267
    return-void
.end method
