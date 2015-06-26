.class final LwB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/String;

.field d:Ljava/lang/String;

.field private synthetic e:LwA;


# direct methods
.method private constructor <init>(LwA;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, LwB;->e:LwA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LwA;B)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, LwB;-><init>(LwA;)V

    return-void
.end method
