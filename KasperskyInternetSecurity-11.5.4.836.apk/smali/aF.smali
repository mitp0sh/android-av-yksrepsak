.class public final LaF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:LaH;

.field public d:LaK;

.field public e:LaM;

.field public f:LaI;

.field private g:Ljava/lang/String;

.field private h:LaG;

.field private i:LaJ;

.field private synthetic j:LaE;


# direct methods
.method public constructor <init>(LaE;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 206
    iput-object p1, p0, LaF;->j:LaE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const-string v0, "Description"

    invoke-static {p2, v0}, LaD;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaF;->g:Ljava/lang/String;

    .line 208
    const-string v0, "LicenseType"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaF;->a:I

    .line 209
    const-string v0, "LicenseTerm"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaF;->b:I

    .line 210
    const-string v0, "ApplicationInfo"

    invoke-static {p2, v0}, LaD;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    new-instance v1, LaG;

    invoke-direct {v1, p0, v0}, LaG;-><init>(LaF;Lorg/json/JSONObject;)V

    iput-object v1, p0, LaF;->h:LaG;

    .line 214
    :cond_0
    const-string v0, "LicensingObjectInfo"

    invoke-static {p2, v0}, LaD;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 216
    new-instance v1, LaJ;

    invoke-direct {v1, p0, v0}, LaJ;-><init>(LaF;Lorg/json/JSONObject;)V

    iput-object v1, p0, LaF;->i:LaJ;

    .line 218
    :cond_1
    const-string v0, "CustomerInfo"

    invoke-static {p2, v0}, LaD;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_2

    .line 220
    new-instance v1, LaH;

    invoke-direct {v1, p0, v0}, LaH;-><init>(LaF;Lorg/json/JSONObject;)V

    iput-object v1, p0, LaF;->c:LaH;

    .line 222
    :cond_2
    const-string v0, "OrderInfo"

    invoke-static {p2, v0}, LaD;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_3

    .line 224
    new-instance v1, LaK;

    invoke-direct {v1, p0, v0}, LaK;-><init>(LaF;Lorg/json/JSONObject;)V

    iput-object v1, p0, LaF;->d:LaK;

    .line 226
    :cond_3
    const-string v0, "SubscriptionInfo"

    invoke-static {p2, v0}, LaD;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_4

    .line 228
    new-instance v1, LaM;

    invoke-direct {v1, p0, v0}, LaM;-><init>(LaF;Lorg/json/JSONObject;)V

    iput-object v1, p0, LaF;->e:LaM;

    .line 230
    :cond_4
    const-string v0, "LicenseAdditionalInfo"

    invoke-static {p2, v0}, LaD;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_5

    .line 232
    new-instance v1, LaI;

    invoke-direct {v1, p0, v0}, LaI;-><init>(LaF;Lorg/json/JSONObject;)V

    iput-object v1, p0, LaF;->f:LaI;

    .line 234
    :cond_5
    return-void
.end method
