.class public final LaG;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private synthetic c:LaF;


# direct methods
.method public constructor <init>(LaF;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 242
    iput-object p1, p0, LaG;->c:LaF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const-string v0, "ApplicationId"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaG;->a:I

    .line 244
    const-string v0, "ProductId"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaG;->b:I

    .line 245
    return-void
.end method
