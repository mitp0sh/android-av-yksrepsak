.class public final LaI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:I

.field public c:[Ljava/lang/String;

.field public d:[J

.field private synthetic e:LaF;


# direct methods
.method public constructor <init>(LaF;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 397
    iput-object p1, p0, LaI;->e:LaF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    const-string v0, "Scheme"

    invoke-static {p2, v0}, LaD;->a(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LaI;->b:I

    .line 399
    const-string v0, "Integers"

    invoke-static {p2, v0}, LaD;->d(Lorg/json/JSONObject;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, LaI;->a:[I

    .line 400
    const-string v0, "Strings"

    invoke-static {p2, v0}, LaD;->e(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaI;->c:[Ljava/lang/String;

    .line 401
    const-string v0, "Dates"

    invoke-static {p2, v0}, LaD;->f(Lorg/json/JSONObject;Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, LaI;->d:[J

    .line 402
    return-void
.end method
