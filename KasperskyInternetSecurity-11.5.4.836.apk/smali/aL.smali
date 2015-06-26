.class final LaL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private synthetic e:LaK;


# direct methods
.method public constructor <init>(LaK;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 324
    iput-object p1, p0, LaL;->e:LaK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const-string v0, "Name"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaL;->a:Ljava/lang/String;

    .line 326
    const-string v0, "TermCode"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaL;->b:Ljava/lang/String;

    .line 327
    const-string v0, "TypeCode"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaL;->c:Ljava/lang/String;

    .line 328
    const-string v0, "LocalizationCode"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaL;->d:Ljava/lang/String;

    .line 330
    return-void
.end method
