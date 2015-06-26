.class public final LaJ;
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
    .line 254
    iput-object p1, p0, LaJ;->c:LaF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const-string v0, "Count"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaJ;->a:I

    .line 256
    const-string v0, "Type"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaJ;->b:I

    .line 257
    return-void
.end method
