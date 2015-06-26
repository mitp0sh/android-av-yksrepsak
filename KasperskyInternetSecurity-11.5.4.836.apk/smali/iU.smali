.class public final LiU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashMap;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LiU;->a:Ljava/util/HashMap;

    .line 17
    const/4 v0, -0x1

    sput v0, LiU;->b:I

    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    invoke-static {p0, p1, p2}, LiU;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0

    .line 124
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    .line 48
    invoke-static {p0, p1}, LiU;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 51
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, LiU;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 244
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 245
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :catch_0
    move-exception v1

    goto :goto_0

    .line 249
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[I
    .locals 1

    .prologue
    .line 186
    const-string v0, "android.R$styleable"

    invoke-static {v0, p0}, LiU;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 188
    check-cast v0, [I

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 195
    sget v1, LiU;->b:I

    .line 197
    sget-object v0, LiU;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, LiU;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 208
    :goto_0
    return v0

    .line 200
    :cond_0
    const-string v0, "android.R$styleable"

    invoke-static {v0, p0}, LiU;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1

    .line 202
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 205
    :goto_1
    sget-object v1, LiU;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 226
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-object v0

    .line 231
    :catch_0
    move-exception v1

    goto :goto_0

    .line 229
    :catch_1
    move-exception v1

    goto :goto_0
.end method
